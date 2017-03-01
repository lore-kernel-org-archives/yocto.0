Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE413E008D0; Wed,  1 Mar 2017 04:21:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF15E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 04:21:38 -0800 (PST)
Received: by mail-ot0-f195.google.com with SMTP id a12so1927932ota.2
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 04:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bVkjsZNa9WhB78sLxHroZ2gO4tcRwitoRs9bIXKFXiY=;
	b=dfUQhEEipoCh2eJmyWQEZl30ohc50yvGVbsdkwHHL7Fz00cmegB+bMsbwnFrQ3364E
	pxXmgYhS7wjdzf74OFfknFo+oMGM0OiZzGRTgan4Rb8HZrwi5s5u47rZoOAaM0gcesLT
	d54YqPWtxmzIJSolreFyJJwDX2Moax2/iTHiB2Z3GPQDxJ6M7opUG2vHyJ5h3hFXrDUZ
	53zMtfWSQ0udTwLYmdMdgvin+B8MsDCJke38zp/VwaJH4sgavDX1bybpDUpCu7etulDB
	r/FEyqZUAA3Vhbnm5Jnotqh9q9jyJbeDTeTt5l2BxVVrH8kirWxMN9pz0DsrDqiAjYR9
	BoOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bVkjsZNa9WhB78sLxHroZ2gO4tcRwitoRs9bIXKFXiY=;
	b=XG3L+RpMKmZwOSyxEcRQmSYU+PlZ8/jKcXp3YlSyalCjImZZ/02yld5F6tX5N4qrmw
	6cen3FhYXMvWSHDAzQCWzJ5jbyJfGxnnwKyPCyJApof2xs7v3yKd6lTXN6eNlmuTSGoa
	ZHaD4/N6TZrbeNyhzuaE9WaBSzbJVkXQFHL/bZyLaEA6ghasE+rJCM7icqLrKkEGguLF
	nf9PPcysL6kGpXSgfXoZ0afoNQPYlllozi9v0JB0CTa52aiwFObk2i93QBuLi8Mk/RwE
	54JOmvkTqX7yXUenVuH2/ww0Xq+CY5AYRXq/vs4ARUe3wTVC5Oa+qm2U29SRu/+AyT/m
	+YgQ==
X-Gm-Message-State: AMke39kMaRsi+UqzVxN6NzeyaEcji4F0WaJfLCnWxesQy7kU0hKfoAk/+7li8tYS7UPD1R+i58o3JCvzMuUIMg==
X-Received: by 10.157.1.105 with SMTP id 96mr2376952otu.54.1488370897439; Wed,
	01 Mar 2017 04:21:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.40.228 with HTTP; Wed, 1 Mar 2017 04:21:37 -0800 (PST)
In-Reply-To: <CAMKF1soRd_1Aaes7-ky0f2ef+ye03y+qH3xcwCqHwtg7J=-5Aw@mail.gmail.com>
References: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
	<CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
	<CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
	<CAMKF1soRd_1Aaes7-ky0f2ef+ye03y+qH3xcwCqHwtg7J=-5Aw@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Wed, 1 Mar 2017 17:51:37 +0530
Message-ID: <CA+pXca2tQ2tSJrUA4iTNBwwvvtrddbSnULzcsXOJb5+jcp=unw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: error while compiling external module in Krogoth branch
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
X-List-Received-Date: Wed, 01 Mar 2017 12:21:40 -0000
Content-Type: multipart/alternative; boundary=94eb2c03b718a2d1d00549aa5a8f

--94eb2c03b718a2d1d00549aa5a8f
Content-Type: text/plain; charset=UTF-8

Hi,

Already patched is  applied in latest Yocto source.

Thanks,
Praveen.

On Tue, Feb 28, 2017 at 8:31 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Tue, Feb 28, 2017 at 5:27 AM praveen vattipalli <praveen.vatt@gmail.com>
> wrote:
>
>> Hi,
>> I am using krogoth branch of meta-altera.
>> in meta/classes/kernel-yocto.bbclass file
>> SRCTREECOVEREDTASKS += "do_kernel_configme do_validate_branches
>> do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch
>> do_unpack do_patch"
>>
>> if i remove "do_shared_workdir" . it worked. is this the right way.
>>
>
>
> Please send this as a patch
>
>>
>> Thanks.native']
>> NOTE: Runtime target 'packagegroup-meshwifi' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['packagegroup-meshwifi',
>> 'plumewifi', 'openvswitch-native', 'util-linux-uuidgen-native']
>> ERROR: Required build target 'comcast-br
>>
>> On Tue, Feb 28, 2017 at 12:46 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> On Tue, Feb 21, 2017 at 6:31 AM praveen vattipalli <
>> praveen.vatt@gmail.com> wrote:
>>
>> Hi All,
>> I am using poky-krogoth source and meta-altera layer. I am building
>> kernel locally using externalsrc. while building external module i am
>> getting error.
>>
>>
>> Which branch of meta-altera are you using
>>
>>
>>
>>
>> ERROR: Task do_make_scripts in /home/praveenk/source/
>> platform/build/../meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb depends
>> upon non-existent task do_shared_workdir in /home/praveenk/source/
>> platform/build/../meta-altera/recipes-kernel/linux/linux-
>> altera-ltsi_4.1.22.bb
>> ERROR: Command execution failed: 1
>>
>> linux.bb contains
>>
>> LINUX_VERSION = "4.1.22"
>> LINUX_VERSION_SUFFIX = "-ltsi"
>>
>> include linux-altera.inc
>>
>> SRC_URI = "file://${EXTERNALSRC}"
>>
>> LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=
>> d7810fab7487fb0aad327b76f1be7cd7"
>>
>> BUILD_DEFCONFIG = "socfpga_defconfig"
>> EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
>> EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
>>
>> SRCREV_pn-${PN} = "${AUTOREV}"
>>
>> S= "${EXTERNALSRC}"
>>
>> hello-mod.bb  contains
>>
>> SUMMARY = "Example of how to build an external Linux kernel module"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
>>
>> inherit module
>>
>> SRC_URI = "file://Makefile \
>>            file://hello.c \
>>            file://COPYING \
>>           "
>>
>>
>> S = "${WORKDIR}"
>>
>> # The inherit of module.bbclass will automatically name module packages
>> with
>> # "kernel-module-" prefix as required by the oe-core build environment.
>> ~
>>
>>
>> Am I missing anything?
>>
>> Thanks,
>> Praveen.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>

--94eb2c03b718a2d1d00549aa5a8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>Already patched is=C2=A0 a=
pplied in latest Yocto source.<br><br></div>Thanks,<br></div>Praveen.<br></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Feb 2=
8, 2017 at 8:31 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div><br><div class=3D"gmail_quote"><span c=
lass=3D""><div>On Tue, Feb 28, 2017 at 5:27 AM praveen vattipalli &lt;<a hr=
ef=3D"mailto:praveen.vatt@gmail.com" target=3D"_blank">praveen.vatt@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_-=
5942505496979663109gmail_msg"><div class=3D"m_-5942505496979663109gmail_msg=
"><div class=3D"m_-5942505496979663109gmail_msg"><div class=3D"m_-594250549=
6979663109gmail_msg"><div class=3D"m_-5942505496979663109gmail_msg">Hi,<br =
class=3D"m_-5942505496979663109gmail_msg"></div>I am using krogoth branch o=
f meta-altera.<br class=3D"m_-5942505496979663109gmail_msg"></div>in meta/c=
lasses/kernel-yocto.<wbr>bbclass file <br class=3D"m_-5942505496979663109gm=
ail_msg">SRCTREECOVEREDTASKS +=3D &quot;do_kernel_configme do_validate_bran=
ches do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch do=
_unpack do_patch&quot;<br class=3D"m_-5942505496979663109gmail_msg"><br cla=
ss=3D"m_-5942505496979663109gmail_msg"></div>if i remove &quot;do_shared_wo=
rkdir&quot; . it worked. is this the right way.</div></div></blockquote><di=
v><br></div><div><br></div></span><div>Please send this as a patch=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div class=3D"m_-5942505496979663109gmail=
_msg"><div class=3D"m_-5942505496979663109gmail_msg"><br class=3D"m_-594250=
5496979663109gmail_msg"></div>Thanks.native&#39;]<br class=3D"m_-5942505496=
979663109gmail_msg"></div><div class=3D"m_-5942505496979663109gmail_msg">NO=
TE: Runtime target &#39;packagegroup-meshwifi&#39; is unbuildable, removing=
...</div><div class=3D"m_-5942505496979663109gmail_msg">Missing or unbuilda=
ble dependency chain was: [&#39;packagegroup-meshwifi&#39;, &#39;plumewifi&=
#39;, &#39;openvswitch-native&#39;, &#39;util-linux-uuidgen-native&#39;]</d=
iv><div class=3D"m_-5942505496979663109gmail_msg">ERROR: Required build tar=
get &#39;comcast-br</div><div><div class=3D"h5"><div class=3D"gmail_extra m=
_-5942505496979663109gmail_msg"><br class=3D"m_-5942505496979663109gmail_ms=
g"><div class=3D"gmail_quote m_-5942505496979663109gmail_msg">On Tue, Feb 2=
8, 2017 at 12:46 PM, Khem Raj <span class=3D"m_-5942505496979663109gmail_ms=
g">&lt;<a href=3D"mailto:raj.khem@gmail.com" class=3D"m_-594250549697966310=
9gmail_msg" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br c=
lass=3D"m_-5942505496979663109gmail_msg"><blockquote class=3D"gmail_quote m=
_-5942505496979663109gmail_msg" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div class=3D"m_-5942505496979663109gmail_msg"=
><br class=3D"m_-5942505496979663109gmail_msg"><div class=3D"gmail_quote m_=
-5942505496979663109gmail_msg"><span class=3D"m_-5942505496979663109gmail_m=
sg"><div class=3D"m_-5942505496979663109gmail_msg">On Tue, Feb 21, 2017 at =
6:31 AM praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gmail.com" cl=
ass=3D"m_-5942505496979663109gmail_msg" target=3D"_blank">praveen.vatt@gmai=
l.com</a>&gt; wrote:<br class=3D"m_-5942505496979663109gmail_msg"></div><bl=
ockquote class=3D"gmail_quote m_-5942505496979663109gmail_msg" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m=
_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_=
-5942505496979663109gmail_msg"><div class=3D"m_-5942505496979663109m_870069=
2231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg=
"><div class=3D"m_-5942505496979663109m_8700692231478789494m_87020667909972=
06627gmail_msg m_-5942505496979663109gmail_msg"><div class=3D"m_-5942505496=
979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054969=
79663109gmail_msg"><div class=3D"m_-5942505496979663109m_870069223147878949=
4m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><div class=
=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_m=
sg m_-5942505496979663109gmail_msg"><div class=3D"m_-5942505496979663109m_8=
700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmai=
l_msg">Hi All,<br class=3D"m_-5942505496979663109m_8700692231478789494m_870=
2066790997206627gmail_msg m_-5942505496979663109gmail_msg"></div>I am using=
 poky-krogoth=20
source and meta-altera layer. I am building kernel locally using=20
externalsrc. while building external module i am getting error.<br class=3D=
"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg =
m_-5942505496979663109gmail_msg"></div></div></div></div></div></div></bloc=
kquote><div class=3D"m_-5942505496979663109gmail_msg"><br class=3D"m_-59425=
05496979663109gmail_msg"></div></span><div class=3D"m_-5942505496979663109g=
mail_msg">Which branch of meta-altera are you using</div><blockquote class=
=3D"gmail_quote m_-5942505496979663109gmail_msg" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_-594250549697=
9663109gmail_msg"><div class=3D"m_-5942505496979663109m_8700692231478789494=
h5 m_-5942505496979663109gmail_msg"><div class=3D"m_-5942505496979663109m_8=
700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmai=
l_msg"><div class=3D"m_-5942505496979663109m_8700692231478789494m_870206679=
0997206627gmail_msg m_-5942505496979663109gmail_msg"><div class=3D"m_-59425=
05496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594250=
5496979663109gmail_msg"><div class=3D"m_-5942505496979663109m_8700692231478=
789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><div =
class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gm=
ail_msg m_-5942505496979663109gmail_msg"><div class=3D"m_-59425054969796631=
09m_8700692231478789494m_8702066790997206627gmail_msg m_-594250549697966310=
9gmail_msg"><br class=3D"m_-5942505496979663109m_8700692231478789494m_87020=
66790997206627gmail_msg m_-5942505496979663109gmail_msg"><br class=3D"m_-59=
42505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594=
2505496979663109gmail_msg"><br class=3D"m_-5942505496979663109m_87006922314=
78789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><sp=
an style=3D"color:rgb(255,0,0)" class=3D"m_-5942505496979663109m_8700692231=
478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">ER=
ROR: Task do_make_scripts in</span> /home/praveenk/source/<wbr>platform/bui=
ld/../meta-<wbr>skeleton/recipes-kernel/hello-<wbr>mod/<a href=3D"http://he=
llo-mod_0.1.bb" class=3D"m_-5942505496979663109m_8700692231478789494m_87020=
66790997206627gmail_msg m_-5942505496979663109gmail_msg" target=3D"_blank">=
hello-mod_0.1.bb</a> <span style=3D"color:rgb(255,0,0)" class=3D"m_-5942505=
496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054=
96979663109gmail_msg">depends upon non-existent task do_shared_workdir in</=
span> /home/praveenk/source/<wbr>platform/build/../meta-altera/<wbr>recipes=
-kernel/linux/<a href=3D"http://linux-altera-ltsi_4.1.22.bb" class=3D"m_-59=
42505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594=
2505496979663109gmail_msg" target=3D"_blank">linux-<wbr>altera-ltsi_4.1.22.=
bb</a><br class=3D"m_-5942505496979663109m_8700692231478789494m_87020667909=
97206627gmail_msg m_-5942505496979663109gmail_msg"><span style=3D"color:rgb=
(255,0,0)" class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790=
997206627gmail_msg m_-5942505496979663109gmail_msg">ERROR: Command executio=
n failed: 1<br class=3D"m_-5942505496979663109m_8700692231478789494m_870206=
6790997206627gmail_msg m_-5942505496979663109gmail_msg"></span><br class=3D=
"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg =
m_-5942505496979663109gmail_msg"></div><a href=3D"http://linux.bb" class=3D=
"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg =
m_-5942505496979663109gmail_msg" target=3D"_blank">linux.bb</a> contains<br=
 class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627g=
mail_msg m_-5942505496979663109gmail_msg"><br class=3D"m_-59425054969796631=
09m_8700692231478789494m_8702066790997206627gmail_msg m_-594250549697966310=
9gmail_msg">LINUX_VERSION =3D &quot;4.1.22&quot;<br class=3D"m_-59425054969=
79663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594250549697=
9663109gmail_msg">LINUX_VERSION_SUFFIX =3D &quot;-ltsi&quot;<br class=3D"m_=
-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-=
5942505496979663109gmail_msg"><br class=3D"m_-5942505496979663109m_87006922=
31478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">=
include linux-altera.inc<br class=3D"m_-5942505496979663109m_87006922314787=
89494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><br cl=
ass=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmai=
l_msg m_-5942505496979663109gmail_msg">SRC_URI =3D &quot;file://${EXTERNALS=
RC}&quot;<br class=3D"m_-5942505496979663109m_8700692231478789494m_87020667=
90997206627gmail_msg m_-5942505496979663109gmail_msg"><br class=3D"m_-59425=
05496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594250=
5496979663109gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=
=3D<wbr>d7810fab7487fb0aad327b76f1be7c<wbr>d7&quot;<br class=3D"m_-59425054=
96979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-594250549=
6979663109gmail_msg"><br class=3D"m_-5942505496979663109m_87006922314787894=
94m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">BUILD_DEF=
CONFIG =3D &quot;socfpga_defconfig&quot;<br class=3D"m_-5942505496979663109=
m_8700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109g=
mail_msg">EXTERNALSRC =3D &quot;${TOPDIR}/../meta-altera/<wbr>recipes-kerne=
l/linux/files&quot;<br class=3D"m_-5942505496979663109m_8700692231478789494=
m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">EXTERNALSRC=
_BUILD =3D &quot;${TOPDIR}/../meta-altera/<wbr>recipes-kernel/linux/files&q=
uot;<br class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997=
206627gmail_msg m_-5942505496979663109gmail_msg"><br class=3D"m_-5942505496=
979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054969=
79663109gmail_msg">SRCREV_pn-${PN} =3D &quot;${AUTOREV}&quot;<br class=3D"m=
_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_=
-5942505496979663109gmail_msg"><br class=3D"m_-5942505496979663109m_8700692=
231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"=
>S=3D &quot;${EXTERNALSRC}&quot;<br class=3D"m_-5942505496979663109m_870069=
2231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg=
"><br class=3D"m_-5942505496979663109m_8700692231478789494m_870206679099720=
6627gmail_msg m_-5942505496979663109gmail_msg"></div><a href=3D"http://hell=
o-mod.bb" class=3D"m_-5942505496979663109m_8700692231478789494m_87020667909=
97206627gmail_msg m_-5942505496979663109gmail_msg" target=3D"_blank">hello-=
mod.bb</a>=C2=A0 contains<br class=3D"m_-5942505496979663109m_8700692231478=
789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><br c=
lass=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gma=
il_msg m_-5942505496979663109gmail_msg">SUMMARY =3D &quot;Example of how to=
 build an external Linux kernel module&quot;<br class=3D"m_-594250549697966=
3109m_8700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663=
109gmail_msg">LICENSE =3D &quot;GPLv2&quot;<br class=3D"m_-5942505496979663=
109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054969796631=
09gmail_msg">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>12f884d2a=
e1ff87c09e5b7ccc2c4ca<wbr>7e&quot;<br class=3D"m_-5942505496979663109m_8700=
692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_m=
sg"><br class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997=
206627gmail_msg m_-5942505496979663109gmail_msg">inherit module<br class=3D=
"m_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg =
m_-5942505496979663109gmail_msg"><br class=3D"m_-5942505496979663109m_87006=
92231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_ms=
g">SRC_URI =3D &quot;file://Makefile \<br class=3D"m_-5942505496979663109m_=
8700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gma=
il_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file:/=
/hello.c \<br class=3D"m_-5942505496979663109m_8700692231478789494m_8702066=
790997206627gmail_msg m_-5942505496979663109gmail_msg">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://COPYING \<br class=3D"m_-=
5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-5=
942505496979663109gmail_msg">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;<br class=3D"m_-5942505496979663109m_8700692231478789494m_8=
702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><br class=3D"m=
_-5942505496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_=
-5942505496979663109gmail_msg"><br class=3D"m_-5942505496979663109m_8700692=
231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"=
>S =3D &quot;${WORKDIR}&quot;<br class=3D"m_-5942505496979663109m_870069223=
1478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg"><=
br class=3D"m_-5942505496979663109m_8700692231478789494m_870206679099720662=
7gmail_msg m_-5942505496979663109gmail_msg"># The inherit of module.bbclass=
 will automatically name module packages with<br class=3D"m_-59425054969796=
63109m_8700692231478789494m_8702066790997206627gmail_msg m_-594250549697966=
3109gmail_msg"># &quot;kernel-module-&quot; prefix as required by the oe-co=
re build environment.<br class=3D"m_-5942505496979663109m_87006922314787894=
94m_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">~=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br class=3D"m_-5942505496979663109m_8=
700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmai=
l_msg"><br class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790=
997206627gmail_msg m_-5942505496979663109gmail_msg"></div>Am I missing anyt=
hing?<br class=3D"m_-5942505496979663109m_8700692231478789494m_870206679099=
7206627gmail_msg m_-5942505496979663109gmail_msg"><br class=3D"m_-594250549=
6979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-5942505496=
979663109gmail_msg"></div>Thanks,<br class=3D"m_-5942505496979663109m_87006=
92231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gmail_ms=
g"></div>Praveen.</div></div></div><span class=3D"m_-5942505496979663109m_8=
700692231478789494HOEnZb m_-5942505496979663109gmail_msg"><font class=3D"m_=
-5942505496979663109gmail_msg" color=3D"#888888">
--<br class=3D"m_-5942505496979663109m_8700692231478789494m_870206679099720=
6627gmail_msg m_-5942505496979663109gmail_msg">
______________________________<wbr>_________________<br class=3D"m_-5942505=
496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054=
96979663109gmail_msg">
yocto mailing list<br class=3D"m_-5942505496979663109m_8700692231478789494m=
_8702066790997206627gmail_msg m_-5942505496979663109gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"m_-5942505496979663109m_=
8700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109gma=
il_msg" target=3D"_blank">yocto@yoctoproject.org</a><br class=3D"m_-5942505=
496979663109m_8700692231478789494m_8702066790997206627gmail_msg m_-59425054=
96979663109gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"m_-5942505496979663109m_8700692231478789494m_8702066790997206627=
gmail_msg m_-5942505496979663109gmail_msg" target=3D"_blank">https://lists.=
yoctoproject.<wbr>org/listinfo/yocto</a><br class=3D"m_-5942505496979663109=
m_8700692231478789494m_8702066790997206627gmail_msg m_-5942505496979663109g=
mail_msg">
</font></span></blockquote></div></div>
</blockquote></div><br class=3D"m_-5942505496979663109gmail_msg"></div>
</div></div></blockquote></div></div>
</blockquote></div><br></div>

--94eb2c03b718a2d1d00549aa5a8f--
