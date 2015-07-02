Return-Path: <dgallagher@219design.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF663E00947; Thu,  2 Jul 2015 14:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00, HTML_IMAGE_ONLY_32, 
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3958DE007A3
	for <yocto@yoctoproject.org>; Thu,  2 Jul 2015 14:51:48 -0700 (PDT)
Received: by oiyy130 with SMTP id y130so65981363oiy.0
	for <yocto@yoctoproject.org>; Thu, 02 Jul 2015 14:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=A4QG0tll+ZL9aOvlBaxACNahZP3h3hsaTKClfES55KU=;
	b=aw5zwdssUp3G5iqY2vDGBWux6VS5ogoSkvvWFRjOkJRGxqPomzkPHxPXH539aFHsF/
	53wRVKgFjyFgPqH/3HWZTmiHB+iEIOAFaFp21SEVzyB5IDaRzPybemBohcy3de8O7ROb
	wJk4uORIuLp3PGXEpPWTWXA3UvW3Fdfrz9njbQGSOgy90xBzUnyqljfHSHt5i+82BzBH
	vWEYOv1aMpVUmrBpXx4Uk6w+uCsK72uva/v7clgUxaMMZj5Ia1rFZV0b2gVLqoK6plFE
	Z79HXPJGUxTntkiEbkT3A0IIu4runIF7gtCL/OfubN6s363fWTt1ByubWxShSW4arsTX
	DZuA==
X-Gm-Message-State: ALoCoQkSDoByOpd+DwmS6FXIKef/PO0WoT/3bGL19xJC9gfnTtpdPGZcmXu8pEHgCyRgfUVaude8
MIME-Version: 1.0
X-Received: by 10.182.115.161 with SMTP id jp1mr29857923obb.53.1435873907677; 
	Thu, 02 Jul 2015 14:51:47 -0700 (PDT)
Received: by 10.76.57.130 with HTTP; Thu, 2 Jul 2015 14:51:47 -0700 (PDT)
In-Reply-To: <CAJTo0LaisgY3iST7_umKK=5vaPU3VsBj=BeQK6Z=0qibsQHuMw@mail.gmail.com>
References: <CA+89abzJG1v9v7AUpRmexJnQs2S7GMYuAVe3McWygm=vnmbnQQ@mail.gmail.com>
	<CAJTo0LaisgY3iST7_umKK=5vaPU3VsBj=BeQK6Z=0qibsQHuMw@mail.gmail.com>
Date: Thu, 2 Jul 2015 14:51:47 -0700
Message-ID: <CA+89abwrqw0enq48iqz2ET70iwnScyo2KcWtNhwPoA_D6AHqAQ@mail.gmail.com>
From: Daniel Gallagher <dgallagher@219design.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Automatic Virtual Keyboard?
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
X-List-Received-Date: Thu, 02 Jul 2015 21:51:50 -0000
Content-Type: multipart/alternative; boundary=089e01182cf235b5e10519eb723b

--089e01182cf235b5e10519eb723b
Content-Type: text/plain; charset=UTF-8

Yes, output of gtk-query-immodules-2.0 below:

# GTK+ Input Method Modules file
# Automatically generated file, do not edit
# Created by /usr/bin/gtk-query-immodules-2.0 from gtk+-2.24.25
#
"/usr/lib/gtk-2.0/2.10.0/immodules/libmb-im-invoker.so"
"matchbox-im-invoker" "Virtual Keyboard" "" "" "*"


I've got GTK_IM_MODULE set to "matchbox-im-invoker", and "matchbox-keyboard
-d" is running as well, but the keyboard doesn't pop up as expected.

Is there anything else I should check?

Thanks,

Daniel Gallagher
Software Engineer
(650) 969-4219 x106
<http://www.219design.com>

On Mon, Jun 29, 2015 at 8:53 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 19 June 2015 at 16:33, Daniel Gallagher <dgallagher@219design.com>
> wrote:
>
>> I'm trying to get matchbox-keyboard to pop up automatically for text
>> input fields, and ran across this bug report:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6774
>>
>> I've tried setting
>>
>> HAVE_TOUCHSCREEN=1
>>
>> HAVE_KEYBOARD=0
>>
>> in /etc/formfactor/machconfig as suggested in this post:
>> https://lists.yoctoproject.org/pipermail/yocto/2011-September/002951.html
>> but that doesn't seem to have any effect in fido.
>>
>> Does anyone have a workaround for this bug in fido?
>>
>
> Sadly not, it appears that something regressed and I've not had the time
> to sort it out.  Do you have matchbox-keyboard-im installed?
>
> Ross
>

--089e01182cf235b5e10519eb723b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, output of gtk-query-immodules-2.0 below:<div><br></di=
v><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div=
># GTK+ Input Method Modules file</div></div><div><div># Automatically gene=
rated file, do not edit</div></div><div><div># Created by /usr/bin/gtk-quer=
y-immodules-2.0 from gtk+-2.24.25</div></div><div><div>#</div></div><div><d=
iv>&quot;/usr/lib/gtk-2.0/2.10.0/immodules/libmb-im-invoker.so&quot;=C2=A0<=
/div></div><div><div>&quot;matchbox-im-invoker&quot; &quot;Virtual Keyboard=
&quot; &quot;&quot; &quot;&quot; &quot;*&quot;=C2=A0</div></div></blockquot=
e><div><div><br></div><div>I&#39;ve got GTK_IM_MODULE set to &quot;matchbox=
-im-invoker&quot;, and &quot;matchbox-keyboard -d&quot; is running as well,=
 but the keyboard doesn&#39;t pop up as expected.</div></div><div><br></div=
><div>Is there anything else I should check?</div><div><br></div><div>Thank=
s,</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=
=3D"gmail_signature">Daniel Gallagher<br>Software Engineer<br>(650) 969-421=
9 x106<br><a href=3D"http://www.219design.com" target=3D"_blank"><img src=
=3D"http://www.219design.com/uploads/library/EmailSig/219logo_120x25.png"><=
/a><br></div></div>
<br><div class=3D"gmail_quote">On Mon, Jun 29, 2015 at 8:53 AM, Burton, Ros=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br=
><div class=3D"gmail_quote">On 19 June 2015 at 16:33, Daniel Gallagher <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:dgallagher@219design.com" target=3D"_bl=
ank">dgallagher@219design.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div>I&#39;m trying to get matchbox-keyboard to pop up automatic=
ally for text input fields, and ran across this bug report: <a href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6774" target=3D"_blank">htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6774</a></div><div><br></d=
iv><div>I&#39;ve tried setting</div><div><blockquote style=3D"margin:0px 0p=
x 0px 40px;border:none;padding:0px"><div>HAVE_TOUCHSCREEN=3D1</div></blockq=
uote><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">=
<div>HAVE_KEYBOARD=3D0</div></blockquote>in /etc/formfactor/machconfig as s=
uggested in this post:=C2=A0<a href=3D"https://lists.yoctoproject.org/piper=
mail/yocto/2011-September/002951.html" target=3D"_blank">https://lists.yoct=
oproject.org/pipermail/yocto/2011-September/002951.html</a> but that doesn&=
#39;t seem to have any effect in fido.</div><div><br></div><div>Does anyone=
 have a workaround for this bug in fido?</div></blockquote></div><br></span=
>Sadly not, it appears that something regressed and I&#39;ve not had the ti=
me to sort it out.=C2=A0 Do you have matchbox-keyboard-im installed?</div><=
span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--089e01182cf235b5e10519eb723b--
