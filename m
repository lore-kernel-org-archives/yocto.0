Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C088FE006C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 13:20:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB5LKlVa021711
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Dec 2012 13:20:47 -0800 (PST)
Received: from msp-dhcp50.wrs.com (172.25.34.50) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 5 Dec 2012 13:20:47 -0800
Message-ID: <50BFBAB6.4080603@windriver.com>
Date: Wed, 5 Dec 2012 15:20:54 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121026 Thunderbird/16.0.2
MIME-Version: 1.0
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
References: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
	<50ABA048.7080707@windriver.com>
	<36ED13F3654AE54CA763E6821D93A5711048CA0D@szxeml534-mbx.china.huawei.com>,
	<50AD2B96.60504@windriver.com>
	<36ED13F3654AE54CA763E6821D93A5711049B67C@szxeml534-mbx.china.huawei.com>
	<36ED13F3654AE54CA763E6821D93A571104A5BBA@szxeml534-mbs.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A571104A5BBA@szxeml534-mbs.china.huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"'dvhart@linux.intel.com'" <dvhart@linux.intel.com>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: Re: Need for offline binary configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Dec 2012 21:20:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/29/12 5:09 AM, Venkata ramana gollamudi wrote:
> Added few more thoughts
> Looking for possible options to implement Offline Configuration Tool requirement. please check and comment on it.
>
> Configuration flow:
>
> a) Task do_createconfig will generate data to configure. This serves as input for configuration UI in OCT.

Using tasks to control the configuration elements will require the build system 
and recipes.  This is really good for the existing workflow, but doesn't help 
with the blessed binaries situation.

What I'd love to see (but don't expect) is a way for the binary packages to 
document he configuration files and options in a way that the UI can load this 
information, give the user simple check-box/drop down style configuration -- or 
simply a text editor with the end result something that gets back to the target 
environment.

> b) OCT UI will read that config data(from step(a)) to show it in GUI. User configures using GUI inputs. Stores the user OCT configuration to OCT config file. (Note user can directly modify the OCT config file, if User is familier with it)
>
> c) preinst, postinst, prerm, postrm, or a do_applyconfig(without bb files reparse), can read OCT config file content (using a library) and apply necessary changes.

I'm not sure pre/post is the right place to do these changes.  Typically I've 
seen the default configuration files marked as such within the package system 
and then the modifications are made externally.  Sometimes they're made in 
ancillary packages or just made raw on the disk.  Most package management 
systems I'm aware of can handle this just fine.

My concern with modifying the defaults is that the feed become project specific, 
and again it requires input during the build process as opposed to the install 
process.

> Now we can look into possibility of using a specific configuration UI implementation or a generic configuration model or combination of both.
>
> 1) Using a specific configuration GUI implementation:
>     do_createconfig generates the configuration information, in format like datafile/xml and OCT reads this config data and provides a GUI to modify or configure the features.
>
> Pros: Detailed and complex GUIs can be supported which will be user friendly. Ex: User management, network management etc.
> Cons: As UI is static, it has to be modified to support new configuration requirements
> and UI modifications are generally complex.

Having something like a do_createconfig (or even a do_describeconfig) to 
generate a file that is later made available to the UI tool is my suggestion. 
Then the input/output of the tool ends up in the rootfs directly.  (The methods 
to get to the rootfs should be either a specific path, a URL for get/put 
operations, or a method like tcf/ssh to copy the item to a running target.

Either a custom per-package model or a generic model may be needed.  I don't 
know what the best approach is -- however I know previous attempts to do this 
have generally resulted in more 'custom' model then generic + config file model.

But in general there seem to be three main types of configuration files that 
I've seen:

Column/format based -- i.e. /etc/fstab, /etc/exports
Key/Value based -- things like Key=Value, or Key:\nValue, etc..
XML-like -- Highly formatted configuration files like apache.

--Mark

> 2) A generic configuration model
>     do_createconfig generates configuration information with presentation information included (like kconfig) and OCT reads this config information and provides a generic UI implementation to modify or config the data like menuconfig.
>
> Pros:
> 	- Generic and dynamic UI allowing the config menus to be added from poky layers providing platform for configuration.
> 	- New features can add new menus configuration options. Feature/package enable and disable can control the configurtion menus.
> 	- So configuration is shown only if feature/package is present/selected.
> Cons:
> 	- Generic method of implementing can be complex, specifically for features where configuration is complex ex: User management, network configuration.
> 	- Custom or specific UI will be more user friendly and gives more control to UI designer.
>
> 3) Combination of both
> Complex features requiring more UI control can implement those features using the method(1) and also providing the plaform for generic UI implementation.
> OCT displays both UI configurations.
> Ex: Static Image level features like User management, network config can be implemented using method(1)
>      Service configuration, file system type, hist size configure etc can be implemented using method(2).
>
> Pros: Gives control to project to select the Complex and simple UIs.
>
> Cons: Still needs a OCT UI change if method(1) feature need to be changed.
>        Drawing a line between complex and simple UI features may not very straight forward.
>        Adding dynamic Complex UI is not possible to be added from poky layers.
>
> Decision to provide a generic configuration model is mainly based on how much we expect the configuration area to grow along with layers.
> Image level features like user management, network management generally are not dynamic features, so having a specific/custom UI implementation looks fine for such features.
>
> Regards,
> Ramana
>


