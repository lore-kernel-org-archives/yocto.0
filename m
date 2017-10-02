Return-Path: <california.l.sullivan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E136E00D14; Mon,  2 Oct 2017 16:54:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64150E00D03
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 16:54:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Oct 2017 16:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,471,1500966000"; 
	d="scan'208,217";a="141955018"
Received: from clsulliv.jf.intel.com ([10.7.201.36])
	by orsmga002.jf.intel.com with ESMTP; 02 Oct 2017 16:54:21 -0700
To: yocto@yoctoproject.org
References: <CAPxJQ9Fw53QT_3m2mNmro4Cfe-uGARgGkjC6zC0oZV4Z+1uiuQ@mail.gmail.com>
	<CAPxJQ9H-ZJBm1Ns3Sj8LOjp-RgZT=cqcHFrhy9782VVWoau1fg@mail.gmail.com>
From: Cal Sullivan <california.l.sullivan@intel.com>
Message-ID: <f8749d96-0643-8464-27e9-1ea430de0e04@intel.com>
Date: Mon, 2 Oct 2017 16:54:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAPxJQ9H-ZJBm1Ns3Sj8LOjp-RgZT=cqcHFrhy9782VVWoau1fg@mail.gmail.com>
Subject: Re: problem adding first layer to yocto
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
X-List-Received-Date: Mon, 02 Oct 2017 23:54:24 -0000
Content-Type: multipart/alternative;
	boundary="------------C3826F212C9072AB390FBB2A"
Content-Language: en-US

--------------C3826F212C9072AB390FBB2A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Your layer appears to only be adding a new recipe. It won't be built 
unless you tell it to be built, or you build something that depends on 
it, or you add it to the image you're building.
So your options are:
bitbake example
add IMAGE_INSTALL_append = " example" to your local.conf
have another recipe that requires example, and build or add that to your 
image.

---
Cal

On 10/02/2017 04:05 PM, Mark Hieber wrote:
> sorry, fat-fingered send
>
> Anyway, I created this layer. I had it create a default recipe, I 
> looked at all the files, they all seem to be correct. I then ran
>
> source oe-init-build-env
>
> and then edited build/conf/bblayers.conf, it has
>
> BBLAYERS ?= " \
>
>   /yocto/poky/meta \
>
>   /yocto/poky/meta-poky \
>
>   /yocto/poky/meta-yocto-bsp \
>
>   /yocto/poky/meta-mylayer \
>
>   "
>
>
> I then ran "bitbake core-image-minimal" and then ran "runqemu qemux86 
> nographic"
> Inside qemu, I did a 'find / -name "hello*"' and got nothing. Also, 
> when I ran bitbake, it said
>
> #/yocto/poky/build$ bitbake core-image-minimal
> Loading cache: 100% 
> |#############################################################################################################################################################################| 
> Time: 0:00:00
> Loaded 1302 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.2"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp
> meta-mylayer      = "pyro:717303e6fbcbbe181ad9645d762eb5a85d934523"
> Initialising tasks: 100% 
> |########################################################################################################################################################################| 
> Time: 0:00:04
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 2426 tasks of which 2426 didn't need to 
> be rerun and all succeeded.
>
> It seems to me that yocto is NOT picking up my new layer. I am sure 
> that I have missed something, but I read the docs 3 times, and can't 
> find anything I missed.
>
> Thanks for your help,
>
> Mark
>
> On Mon, Oct 2, 2017 at 3:58 PM, Mark Hieber <hieberm@gmail.com 
> <mailto:hieberm@gmail.com>> wrote:
> >
> > Hi, I am just starting out with yocto, and I have an issue. I 
> followed the steps in 
> http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creating-a-general-layer-using-the-yocto-layer-script,
> > create meta-mylayer (in the /yocto/poky directory),
> >
> > #/yocto/poky tree meta-mylayer/
> >
> > meta-mylayer/
> >
> > ├── conf
> >
> > │   └── layer.conf
> >
> > ├── COPYING.MIT
> >
> > ├── README
> >
> > └── recipes-example
> >
> >     └── example
> >
> >         ├── example-0.1
> >
> >         │   ├── example.patch
> >
> >         │   └── helloworld.c
> >
> >         └── example_0.1.bb <http://example_0.1.bb>
> >
>
>


--------------C3826F212C9072AB390FBB2A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Your layer appears to only be adding a new recipe. It won't be built
    unless you tell it to be built, or you build something that depends
    on it, or you add it to the image you're building.<br>
    So your options are:<br>
    bitbake example<br>
    add IMAGE_INSTALL_append = " example" to your local.conf<br>
    have another recipe that requires example, and build or add that to
    your image.<br>
    <br>
    ---<br>
    Cal<br>
    <br>
    <div class="moz-cite-prefix">On 10/02/2017 04:05 PM, Mark Hieber
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPxJQ9H-ZJBm1Ns3Sj8LOjp-RgZT=cqcHFrhy9782VVWoau1fg@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">sorry, fat-fingered send<br>
        <br>
        Anyway, I created this layer. I had it create a default recipe,
        I looked at all the files, they all seem to be correct. I then
        ran<br>
        <br>
        source oe-init-build-env<br>
        <br>
        and then edited build/conf/bblayers.conf, it has<br>
        <br>
        BBLAYERS ?= " \<br>
        <br>
          /yocto/poky/meta \<br>
        <br>
          /yocto/poky/meta-poky \<br>
        <br>
          /yocto/poky/meta-yocto-bsp \<br>
        <br>
          /yocto/poky/meta-mylayer \<br>
        <br>
          "<br>
        <br>
        <br>
        I then ran "bitbake core-image-minimal" and then ran "runqemu
        qemux86 nographic" <br>
        Inside qemu, I did a 'find / -name "hello*"' and got nothing.
        Also, when I ran bitbake, it said <br>
        <br>
        #/yocto/poky/build$ bitbake core-image-minimal<br>
        Loading cache: 100%
|#############################################################################################################################################################################|
        Time: 0:00:00<br>
        Loaded 1302 entries from dependency cache.<br>
        NOTE: Resolving any missing task queue dependencies<br>
        <br>
        Build Configuration:<br>
        BB_VERSION        = "1.34.0"<br>
        BUILD_SYS         = "x86_64-linux"<br>
        NATIVELSBSTRING   = "universal"<br>
        TARGET_SYS        = "i586-poky-linux"<br>
        MACHINE           = "qemux86"<br>
        DISTRO            = "poky"<br>
        DISTRO_VERSION    = "2.3.2"<br>
        TUNE_FEATURES     = "m32 i586"<br>
        TARGET_FPU        = ""<br>
        meta              <br>
        meta-poky         <br>
        meta-yocto-bsp    <br>
        meta-mylayer      =
        "pyro:717303e6fbcbbe181ad9645d762eb5a85d934523"<br>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:CAPxJQ9H-ZJBm1Ns3Sj8LOjp-RgZT=cqcHFrhy9782VVWoau1fg@mail.gmail.com">
      <div dir="ltr">Initialising tasks: 100%
|########################################################################################################################################################################|
        Time: 0:00:04<br>
        NOTE: Executing SetScene Tasks<br>
        NOTE: Executing RunQueue Tasks<br>
        NOTE: Tasks Summary: Attempted 2426 tasks of which 2426 didn't
        need to be rerun and all succeeded.<br>
        <br>
        It seems to me that yocto is NOT picking up my new layer. I am
        sure that I have missed something, but I read the docs 3 times,
        and can't find anything I missed.
        <div><br>
        </div>
        <div>Thanks for your help,</div>
        <div><br>
        </div>
        <div>Mark<br>
          <br>
          On Mon, Oct 2, 2017 at 3:58 PM, Mark Hieber &lt;<a
            href="mailto:hieberm@gmail.com" moz-do-not-send="true">hieberm@gmail.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; Hi, I am just starting out with yocto, and I have an
          issue. I followed the steps in <a
href="http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creating-a-general-layer-using-the-yocto-layer-script"
            moz-do-not-send="true">http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creating-a-general-layer-using-the-yocto-layer-script</a>,<br>
          &gt; create meta-mylayer (in the /yocto/poky directory),<br>
          &gt;<br>
          &gt; #/yocto/poky tree meta-mylayer/<br>
          &gt;<br>
          &gt; meta-mylayer/<br>
          &gt;<br>
          &gt; ├── conf<br>
          &gt;<br>
          &gt; │   └── layer.conf<br>
          &gt;<br>
          &gt; ├── COPYING.MIT<br>
          &gt;<br>
          &gt; ├── README<br>
          &gt;<br>
          &gt; └── recipes-example<br>
          &gt;<br>
          &gt;     └── example<br>
          &gt;<br>
          &gt;         ├── example-0.1<br>
          &gt;<br>
          &gt;         │   ├── example.patch<br>
          &gt;<br>
          &gt;         │   └── helloworld.c<br>
          &gt;<br>
          &gt;         └── <a href="http://example_0.1.bb"
            moz-do-not-send="true">example_0.1.bb</a><br>
          &gt;</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------C3826F212C9072AB390FBB2A--
