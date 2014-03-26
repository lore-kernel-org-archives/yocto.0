Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF50E00B83
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 10:08:49 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ik5so2778693vcb.14
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 10:08:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Qeatcjo49XZyrfJPu2QWzS/eh4mJ6md68R1bkb7aCN0=;
	b=brrtfUcPdoNgc8yLnYNXyFWQGALs+sF9C/qud3IDdpRl108AIgDLqsddNCpwOOpmLQ
	UWwFbW6MoKtFP8QRJzBFGaOq0gge5y1TZvwd7Uf5YNJtln2UpvKncTDO6KZH5pTedGsk
	fbty7QYiEMIMUa0JkmdGh6DeDI9fuaVHEr+kU3vtzMdYSZ780DkSCcdxyvsx54en3+nP
	umIa1a3uYGl6IDvCiOImKj/JvnAmj3IvAeqG3KG43YB7nESRD0ZwNNqzbCjrGmvZN6Yd
	cvDHsdqKeMP0yPT88W5Hxbj19LIeq6Dv82ZYXG072JgJoApbN+lhDgqdmVMiJOtlJMTU
	pp0A==
X-Gm-Message-State: ALoCoQlWRuYed3hBK92ke1Rc+kjBjbRlqglC8grAIhvcio88k4WsLPA0xh0pId1TAQzwTcachUqU
MIME-Version: 1.0
X-Received: by 10.52.18.70 with SMTP id u6mr52813069vdd.11.1395853728330; Wed,
	26 Mar 2014 10:08:48 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 10:08:48 -0700 (PDT)
In-Reply-To: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
References: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
Date: Wed, 26 Mar 2014 10:08:48 -0700
Message-ID: <CAPhnLPCtc9KL6hbdwR-WCy9=_2jUEZ=BFXSFdGpw-+8nhX0L0A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Mahyar Yaghmaee <mahyar@boundarydevices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder setting, ACCEPT_FSL_EULA
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
X-List-Received-Date: Wed, 26 Mar 2014 17:08:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

You'll need a line something like this:

        {'CreateAutoConf': {'machine': 'imx53qsb', 'SDKMACHINE' :
'x86_64', 'distro': 'poky', 'buildhistory' : False, 'atextprepend':
'ACCEPT_FSL_EULA = "1"\n'}},

This adds that line to auto.conf.

On Wed, Mar 26, 2014 at 9:53 AM, Mahyar Yaghmaee
<mahyar@boundarydevices.com> wrote:
> Hello All,
>
> I'm trying to run autobuilder for my custom .conf file but I need to include
> ACCEPT_FSL_EULA="1" in the generated local.conf file.
>  Unfortunately I couldn't find anything related to that in the
> CreateAutoConf.py file to set in my .conf  file.
>
> here's the error messege in the log file:
>
> recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Started
> ERROR: To use 'gpu-viv-bin-mx6q' you need to accept the Freescale EULA at
> '/home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/meta-fsl-arm/EULA'.
> Please read it and in case you accept it, write: ACCEPT_FSL_EULA = "1" in
> your local.conf.
> ERROR: Function failed: do_unpack
> ERROR: Logfile of failure stored in:
> /home/mahyar/autobuilder/yocto-autobuilder/yocto-slave/nightly-fsl-image-gui-master/build/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-gnueabi/gpu-viv-bin-mx6q/1_3.10.17-1.0.0-hfp-r0/temp/log.do_unpack.10848
> NOTE: recipe gpu-viv-bin-mx6q-1_3.10.17-1.0.0-hfp-r0: task do_unpack: Failed
>
>
> please let me know if you have any suggestions
>
> Regards,
> Mahyar
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

