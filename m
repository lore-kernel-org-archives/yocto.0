Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AD40E0043B; Fri, 14 Oct 2016 09:37:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.67 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F847E0034A
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 09:37:34 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id e12so7870215oib.3
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 09:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=U7Yjk85yVIS2ws+09uk/TC5uAydoHRe5WNA78JyNZfI=;
	b=dYYpB5+kYBNoEuUAWKjIY4pRguL28inqvQ9Zq6KcX6Vzge0qEpIEhHku5hFHJrFkbo
	lQ+td59Lc8sOJ7YIWLEPcwAfZ3JFdRY4uJvV8gYsqY7yz1WD9YzNdRRfMNNmC8sBXqqT
	VdIMsZ8EqZmXXnLR2Pxuurrd0Udt8oU/qbn18dVd186Fx+z5cke4gNdSY6uqKfPxtK66
	9xPVcCXGBUh3BgjbZ00b6hgbL1LOO9RlDDzivKws0XXvhtoD8H8yYVg4okQ+eAj+WM1f
	j25QzTrsnrf+XMeHiu8BO+e8NRe2j5gvsuYRN8D411EgCFLsYIkDkz4Uk+aoUtW3hnSs
	o7xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=U7Yjk85yVIS2ws+09uk/TC5uAydoHRe5WNA78JyNZfI=;
	b=myAno888WHJSAWkzth5fMrn0AOLNrgN9Y6wcy8m0tGNidekcQSFkVn8xbf7KG1stsO
	lAPaglE3Bhve5veI4ACFxpZMkhGxUKysbFHwxKE++Top3UCO4ygfIdB+RZR/D4J0UK9y
	cjLKEUPhWV5NVM+7ryMIpqqzVjHPHJD05cOiCNF2NHyn+4ekPgltpM1BqpA2VaNlhKjF
	2uPyZT8Ivdh6JVIDPlOJYSv1/MJIV7fqTQCfZ5GZAXPDRoivkPBR93B35LCBucW44T1t
	99M4zZBNFzXm8pfKrg+asbVOWFXCuY1nbUjdBp1Do7DZtB+TD1qg13LlzQh9DHEw6yhm
	0HUw==
X-Gm-Message-State: AA6/9Rkbl2krp87QCbhh2w1XFvUUDa9UQRs7BsK8q5XN5p2BIoJOlq8zD8pYSJylz8ZMMeOCFPJup4gfpHNBGQ==
X-Received: by 10.202.80.202 with SMTP id e193mr8818098oib.65.1476463054339;
	Fri, 14 Oct 2016 09:37:34 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Fri, 14 Oct 2016 09:37:13 -0700 (PDT)
In-Reply-To: <CAJTo0LZbgdZXHH7NMa1PBbJwHE06=QRXm9+5zbsSq+5sMt+zbA@mail.gmail.com>
References: <CADm5WxPcAqeDdB8f18YhsyX_365Ve7kFqtNuhN0pyp+192G7ng@mail.gmail.com>
	<CAJTo0LZbgdZXHH7NMa1PBbJwHE06=QRXm9+5zbsSq+5sMt+zbA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 14 Oct 2016 09:37:13 -0700
X-Google-Sender-Auth: eMz0FXc9iPxBz4sMlAwjVN-z-Cc
Message-ID: <CABcZANm6FrZB0VjJOhzdjE3-Gc104FQnUUm47d1Zk+DxjFwTEQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Michael Callahan <coder.callahan@gmail.com>
Subject: Re: Two pythons
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
X-List-Received-Date: Fri, 14 Oct 2016 16:37:38 -0000
Content-Type: multipart/alternative; boundary=001a113b0244e0c542053ed5d72a

--001a113b0244e0c542053ed5d72a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2016 at 8:54 AM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 12 October 2016 at 18:58, Michael Callahan <coder.callahan@gmail.com>
> wrote:
>
>> I just moved my project from Fido to Krogoth and now I have two
>> pythons (2.7 and 3).  This bumps the size of my image by approximately
>> 25%.  What would be the most reasonable way to get back to just one
>> python?  Ideally I'd like a magical setting to get rid of python3
>> because there is no custom code for that one but I suppose with enough
>> work I could get all of the python2 code working with python3.
>>
>
> Sadly you can't have a magic option to flip from one to the other as code
> isn't compatible.  In general master has moved to be 99% Py3 - with smart=
pm
> being the only major python2 recipe left - but I thought Krogoth was stil=
l
> Py2 by default so shouldn't be in your image by default.
>
> I suggest you use the usual tools to find out why python2 and python3 are
> in your images, and see what you can change to have just one.
>

Yeah, as Ross says, the usual tools are best there. There are some things
you can do to avoid the python dependency for certain recipes, but it has
to be dealt with on a case by case basis, and of course depends on what
your image is pulling in.

For example,
https://github.com/openembedded/openembedded-core/compare/master...kergoth:=
systemtap-python3
splits
out systemtap-dtrace into a separate recipe which is pulled in via
RRECOMMENDS, so I can use BAD_RECOMMENDATIONS to exclude it for images that
don=E2=80=99t need it (dtrace is the only thing in systemtap that needs pyt=
hon3).
https://github.com/openembedded/meta-openembedded/compare/master...kergoth:=
lirc-python-3
does
the same for lirc.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113b0244e0c542053ed5d72a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Oct 14, 2016 at 8:54 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><div class=3D"gmail_extra"><span c=
lass=3D"gmail-"><div class=3D"gmail_quote">On 12 October 2016 at 18:58, Mic=
hael Callahan <span dir=3D"ltr">&lt;<a href=3D"mailto:coder.callahan@gmail.=
com" target=3D"_blank">coder.callahan@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex"><div id=3D"gmail-m_-4534664319899436607:lf" class=3D"gmail-m=
_-4534664319899436607a3s gmail-m_-4534664319899436607aXjCH gmail-m_-4534664=
319899436607m157c3deda85fa0d9">I just moved my project from Fido to Krogoth=
 and now I have two<br>
pythons (2.7 and 3).=C2=A0 This bumps the size of my image by approximately=
<br>
25%.=C2=A0 What would be the most reasonable way to get back to just one<br=
>
python?=C2=A0 Ideally I&#39;d like a magical setting to get rid of python3<=
br>
because there is no custom code for that one but I suppose with enough<br>
work I could get all of the python2 code working with python3.</div></block=
quote></div><br></span>Sadly you can&#39;t have a magic option to flip from=
 one to the other as code isn&#39;t compatible.=C2=A0 In general master has=
 moved to be 99% Py3 - with smartpm being the only major python2 recipe lef=
t - but I thought Krogoth was still Py2 by default so shouldn&#39;t be in y=
our image by default.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">I suggest you use the usual tools to find out why python2 =
and python3 are in your images, and see what you can change to have just on=
e.</div></blockquote></div><br>Yeah, as Ross says, the usual tools are best=
 there. There are some things you can do to avoid the python dependency for=
 certain recipes, but it has to be dealt with on a case by case basis, and =
of course depends on what your image is pulling in.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">For example,=C2=A0<a href=3D"=
https://github.com/openembedded/openembedded-core/compare/master...kergoth:=
systemtap-python3">https://github.com/openembedded/openembedded-core/compar=
e/master...kergoth:systemtap-python3</a>=C2=A0splits out systemtap-dtrace i=
nto a separate recipe which is pulled in via RRECOMMENDS, so I can use BAD_=
RECOMMENDATIONS to exclude it for images that don=E2=80=99t need it (dtrace=
 is the only thing in systemtap that needs python3).=C2=A0=C2=A0<a href=3D"=
https://github.com/openembedded/meta-openembedded/compare/master...kergoth:=
lirc-python-3">https://github.com/openembedded/meta-openembedded/compare/ma=
ster...kergoth:lirc-python-3</a>=C2=A0does the same for lirc.<br>-- <br><di=
v class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot co=
m<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>S=
enior Software Engineer, Mentor Graphics</div>
</div></div>

--001a113b0244e0c542053ed5d72a--
