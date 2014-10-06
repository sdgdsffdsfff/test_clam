/**
 * @fileoverview Test_clam - Abc.
 * @author 
 */
/**
 * KISSY.use('test_clam/pages/abc/index',function(S,Abc){
 *		new Abc();
 * });
 */
KISSY.add('test_clam/pages/abc/index',function(S,Base) {

	var Abc = Base.extend({
		initializer:function(){
			var self = this;

			// Your Code
			alert('ok');
		}
	},{
		ATTRS: {
			A:{
				value:'abc'
			}
		}
	});

	return Abc;
	
},{
	requires:['base']	
});
