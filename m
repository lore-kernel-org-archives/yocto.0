Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 422C6E009CA; Wed, 19 Oct 2016 23:59:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0310CE0097C
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 23:59:38 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id q126so59313639vkd.2
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 23:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AFMXMqbbqkaQ+ok3Q2wEMQANTlor1Pv8ci/N/ZVz3O4=;
	b=KlwMoPV4tSCGUmtknlkCBPrBCofxSlgspZKEa+OoKUXvfH01SAz+JRDWFy33xHE9Xb
	90YSBnSvNMAOIylhAYPmyjzvEGdmAB4wupH5IjGAf8zTpwr5zSRgPJgFZpIK3Ku4XJHm
	am425FRau8vRzOPEPwllepS9p9HkaHQU0cebfVceQ9wkAFvZ0CV2V77akfe0MHWAr7Cc
	C2JEbRJ3aXlMETaqaz0OCpPLhuUNWjiy/hPoppFKVT/rF7ULZXdekI8SffN7eFizWv2i
	RzI2k1Q4ARg/Wj4lnashlDjCoxqSRk059+NO+DY5gvC53xK+JC0WbltqixhYpPSC1T8X
	kNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AFMXMqbbqkaQ+ok3Q2wEMQANTlor1Pv8ci/N/ZVz3O4=;
	b=dIjCSdZglVkqKxu50KWLMbCag6FOpJsQuNpbPy8HbqjE+QNglnixusZ33Im8Laboga
	lIshBRpkjJdXSX8nuiq4mmaSH9K79RSgX4wP5UovMsetJqMC6/OMwShj2wbHgYCjiZiv
	KsiC0OVo5H6Zl3XmZGfBTV3zsVMup6thpVEs3VyeuCVjNOtrZF77blhg/IJCJZz5iB52
	x6G+KFLO97iBWOPbUKHmXJnkZ013YlXvloAU6utPElFyc/WaM9d7FFGzJ2kNRvbD8vNe
	87bsHPQkXt6c/ys7dTJhiQXLv1C++C/u/pQFNOAiUunEj+wsF73Jhyu/lyv7Jmo+RGFK
	UsfA==
X-Gm-Message-State: AA6/9RlfTwDX6tpmOd1p1siOsQHq9JSZiSdgmUcRmGAIgVS4NUPQa+8dpgPoPBZMzBy3Kp1PtxtTXv1SosLqx76/
X-Received: by 10.31.228.3 with SMTP id b3mr9379996vkh.49.1476946777562; Wed,
	19 Oct 2016 23:59:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.74.195 with HTTP; Wed, 19 Oct 2016 23:59:07 -0700 (PDT)
In-Reply-To: <CAJTo0LaEWJdfY0b-rHkoNc0kxCU2-rGr5C-thBQapbswe_9XLA@mail.gmail.com>
References: <KL1PR0601MB13175BBDFAD7F68C9822C148F8D30@KL1PR0601MB1317.apcprd06.prod.outlook.com>
	<CAJTo0LaEWJdfY0b-rHkoNc0kxCU2-rGr5C-thBQapbswe_9XLA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 20 Oct 2016 09:59:07 +0300
Message-ID: <CAHiDW_H8L8qeu2b0YedQo3WHswA4xtJD35BRFBumWVFWGnO+iQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Nick Wareing <nick.wareing@aranzmedical.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install mozroot-certdata package on a read only root file system
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
X-List-Received-Date: Thu, 20 Oct 2016 06:59:42 -0000
Content-Type: multipart/alternative; boundary=94eb2c096054077478053f467860

--94eb2c096054077478053f467860
Content-Type: text/plain; charset=UTF-8

On 19 October 2016 at 21:55, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 18 October 2016 at 23:26, Nick Wareing <nick.wareing@aranzmedical.com>
> wrote:
>
>> However I'm running into an issue with a recipe in the meta-mono layer:
>> mozroot-certdata. I see the culprit is the pkg_postint script (
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/re
>> cipes-mono/mozroot-certdata/mozroot-certdata_1.0.0.bb) which needs to
>> modify the root file system on first boot which the build system is
>> correctly flagging as impossible with a read only root file system:
>>
>>
> You'll have to extend the recipe to run mono inside a qemu, there are
> plenty of other recipes that demonstrate how to do this (fontcache and
> gio-module-cache classes come to mind, although they also use intercept
> scripts to avoid running qemu more than once).  Basically, use the qemu
> class.
>

Why qemu? There's a mono-native which I would expect to work unless the
certdata is somehow platform specific (?)

There's also an additional problem that came up on stack overflow:
mozroots.exe is hard coded to output to a specific file so that would have
to be fixed as well.


Jussi

--94eb2c096054077478053f467860
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
9 October 2016 at 21:55, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On 18 Octo=
ber 2016 at 23:26, Nick Wareing <span dir=3D"ltr">&lt;<a href=3D"mailto:nic=
k.wareing@aranzmedical.com" target=3D"_blank">nick.wareing@aranzmedical.com=
</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p><span>Howe=
ver I&#39;m running into an issue with a recipe=C2=A0in the meta-mono layer=
: mozroot-certdata. I see the=C2=A0culprit=C2=A0is the pkg_postint script (=
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes=
-mono/mozroot-certdata/mozroot-certdata_1.0.0.bb" class=3D"m_46825549713016=
06243m_3691205571175405345OWAAutoLink" id=3D"m_4682554971301606243m_3691205=
571175405345LPlnk425284" target=3D"_blank">http://git.yoctoproject.org/c<wb=
r>git/cgit.cgi/meta-mono/tree/re<wbr>cipes-mono/mozroot-certdata/mo<wbr>zro=
ot-certdata_1.0.0.bb</a>)=C2=A0which
 needs to modify the root file system on first boot which the build system =
is correctly flagging as impossible with a read only root file system:</spa=
n></p>
<p></p></blockquote></div><br></span>You&#39;ll have to extend the recipe t=
o run mono inside a qemu, there are plenty of other recipes that demonstrat=
e how to do this (fontcache and gio-module-cache classes come to mind, alth=
ough they also use intercept scripts to avoid running qemu more than once).=
=C2=A0 Basically, use the qemu class.</div></div></blockquote><div><br></di=
v><div>Why qemu? There&#39;s a mono-native which I would expect to work unl=
ess the certdata is somehow platform specific (?)</div><div><br></div><div>=
There&#39;s also an additional problem that came up on stack overflow: mozr=
oots.exe is hard coded to output to a specific file so that would have to b=
e fixed as well.</div><div><br></div><div><br></div><div>Jussi</div><div><b=
r></div></div></div></div>

--94eb2c096054077478053f467860--
