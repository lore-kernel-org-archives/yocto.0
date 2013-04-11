Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD82E0144A
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:43:52 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id ia10so1628055vcb.26
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=X1QmJzXTcexpXjBHdeQzfFeX7/EBGjIPVo1/o36klms=;
	b=Uil3jEjobYtNrJ1hsfXKSgDgbu4UIAHmWOjXEisnntqTMviUvjfEFh5xO5WlSlgJlK
	Hi6XXHzxDuNA4XRMx8lpWcdbWt2dsxeqz/DBOXNPyw0jqv846TaGzY7bAJH7HZ4HkcND
	cDaw5YHJMqXL+x5g4g6uem0hiczfgkq688daqjzZNBN3W59UwHINZCWr5fiM5mFjy8gm
	138lKBUFEC9ZNjP6+SrCkLc6lNak7JuSW2mWMUyz2IbWoyOmIkv5t6/OzZQtd2ONxzd8
	/gPulrCkpb79Pk2UJGAGClggFbmMaiwLnVAXhQiS7agByhfcVRFQmT8E5/35kANqFGpb
	J/+w==
MIME-Version: 1.0
X-Received: by 10.220.209.15 with SMTP id ge15mr6352356vcb.15.1365713031591;
	Thu, 11 Apr 2013 13:43:51 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Thu, 11 Apr 2013 13:43:51 -0700 (PDT)
In-Reply-To: <CAPhnLPB1KJuXpARnU=PK=baamxK1fhG2LWhE4D=1yhSPn-f_mA@mail.gmail.com>
References: <CAPhnLPB1KJuXpARnU=PK=baamxK1fhG2LWhE4D=1yhSPn-f_mA@mail.gmail.com>
Date: Thu, 11 Apr 2013 13:43:51 -0700
Message-ID: <CAPhnLPBXsM1_4s1o9vTnvvaC_j-pPGLufRc9jPtSr2zqzz3cEw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>, 
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
X-Gm-Message-State: ALoCoQl1KWNB/7/s4FKCSvktk2d6h8vdgbGhewKIWaUJjUWE81ddf3Xrd2iTJDGWAaSkOESqv9OO
Subject: Re: 1.4_M6.rc1 respin now available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Apr 2013 20:43:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry all. I left out the meta-qt3 hash which is:
4c27cce6688aa39852f3cba5e7b80ec279019605


-b

On Thu, Apr 11, 2013 at 1:42 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> All green! Please begin QA on this build.
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130411-3
>
> poky dylan dab237bc6a7679dfeaa981c14736aedc7b04ecb9
> eclipse-poky dylan 46be27bd3400419e8325d753b85a76bfb1898944
> meta-qt3 dylan
> meta-intel dylan fd58fb07cf4fcc0553d0608f5688fc03e41ea15c
> meta-fsl-arm dylan 5b8683ad04d63f0d5b2638cac245bff28468b634
> meta-fsl-ppc dylan 053e33369633ca7cbbae29c6d3ac9de26a160a16 CheckOutLayers
>
> I'll be pushing tags in a moment.
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

