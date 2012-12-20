Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68AE0E011ED
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 08:24:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2012 08:24:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,324,1355126400"; d="scan'208";a="265082495"
Received: from unknown (HELO [10.255.14.10]) ([10.255.14.10])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2012 08:23:53 -0800
Message-ID: <1356020632.30533.51.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 20 Dec 2012 10:23:52 -0600
In-Reply-To: <50D25E76.1000302@linux.intel.com>
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
	<50D25E76.1000302@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/5] yocto-layer: add 'layer' template data
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
X-List-Received-Date: Thu, 20 Dec 2012 16:24:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-12-19 at 16:40 -0800, Darren Hart wrote:
> 
> On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Add a 'layer' target containing all the data that will be used to
> > generate a generic yocto layer.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> 
> Great stuff Tom, only one nit below:
> 
> > new file mode 100644
> > index 0000000..90ce90e
> > --- /dev/null
> > +++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"	
> > @@ -0,0 +1,6 @@
> > +#include <stdio.h>
> > +
> > +int main(int argc, char **argv)
> > +{
> > +    printf("Hello World!\n");
> 
> If you specify a return type of int, you should be returning one:
> 
> 	return 0;
> 
> :-)
> 

Hmm, I don't think that's actually necessary for main() - if you don't
specify a return value for main(), it should already implicitly return 0
IIRC...

Tom

> > +}
> 
> 
> Looks good otherwise.
> 
> 



