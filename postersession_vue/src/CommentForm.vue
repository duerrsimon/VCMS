<template>
<form class='CommentForm CommentFormThread' action='/VCMS/posters/experimental/my-awesome-poster/#CommentForm' method='post' 
 @submit.prevent="formSend">
	<p class='CommentFormCite CommentForm_cite'>
		<label>
			<span>Your Name</span> 
			<input type='text' name='cite' v-model="comment.cite" class='required' required='required' value='admin' maxlength='128' />
		</label> 
	</p>
	<p class='CommentFormEmail CommentForm_email'>
		<label>
			<span>Your E-Mail</span> 
			<input type='email' name='email' v-model="comment.email" class='required email' required='required' value='test@simonduerr.eu' maxlength='255' />
		</label>
	</p>
	<p class='CommentFormText CommentForm_text'>
		<label>
			<span>Comments</span>
			<textarea name='text' v-model='comment.text' class='required' required='required' rows='5' cols='50'></textarea>
		</label>
	</p>
	<p class='CommentFormNotify'>
		<label><span>E-Mail Notifications:</span></label> 
		<label><input type='radio' name='notify' v-model='comment.notify' checked='checked' value='0' /> Off</label> 
		<label><input type='radio' name='notify' v-model="comment.notify" value='2' /> Replies</label> 
		<label><input type='radio' name='notify' v-model="comment.notify"  value='4' /> All</label> 
	</p>
	<p class='CommentFormSubmit CommentForm_submit'>
		<button type='submit' class='' name='CommentForm_submit' value='1'>Submit</button>
		<input type='hidden' name='page_id' value='1050' v-model="comment.page_id" />
		<input type='hidden' class='CommentFormParent' name='parent_id' v-model="comment.parent_id" value='0' />
	</p>
</form>
</template>
<script>
module.exports = {
  name:"commentform",
  props: ['comment'],
  methods:{
      formSend(){
        this.$emit('processForm')
      }
      
  }
}
</script>
