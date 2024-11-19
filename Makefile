SUBDIRS := camel-main spring-boot quarkus

package:
	@$(foreach dir, $(SUBDIRS), $(MAKE) -C $(dir) package;)

k8s-package:
	@$(foreach dir, $(SUBDIRS), $(MAKE) -C $(dir) k8s-package;)

clean:
	@$(foreach dir, $(SUBDIRS), $(MAKE) -C $(dir) clean;)
