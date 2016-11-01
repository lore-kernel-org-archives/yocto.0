Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 805ABE00CC9; Tue,  1 Nov 2016 06:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47542E00CC4
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 06:38:11 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id 128so100163263oih.0
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 06:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=ck/DFbMXjT6NhssbE1N/egtxsdCqQUF5XDuCUri1pko=;
	b=y5hGUWfR4NC2Zb7E6hBMlAcUf3JoKxOMU3SXjuatsOr7hi9ao53QNkxMixqbziac5t
	yeukK5LLRuzAXdFSS3gQ5VFeIoq+azMLpTfoy6I37fNMN6wfb7uJp7fPMyKTE1GzJUWP
	V0PuhvChDuBpeFdm+yqjjag6dWWHuxuhfcEXnD20Y5u2zDlZnUAjpjfSpmzi572jJQ/M
	1btymNYShKjvHk5sobvFn5E0ncISlB+EKY2W5t55G/NLh908Q4Gwwv6ejvJGL1LIiAdl
	cXJjAatm81oocNySH6tmL2kfBbA9aj44h2rXR1iMyvoIBfJxbeJ9GBipBv8OGyAn2bF7
	u93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=ck/DFbMXjT6NhssbE1N/egtxsdCqQUF5XDuCUri1pko=;
	b=ZNwO5k2LV3Pmnsx3+qek6y1m1JUxvcTX0Nq+cPd/oiu/Z7J94kraH97hpv8QnZLHi4
	RfHaK8GyaYw42MCvuCQpZisT1ixvCHAAhXlNyVzmLmmO5cZoU3mD56Ewv7Dw1eKKJ+/9
	KVLngwTVubI6xVszUbK//kB58W9DwRobcVGWWEeTGk/CWXgbCokxzrCrVtbHlFUKLTSI
	kecctt3eCFUvpu3Ybf1HS9Qww+jGTB5KiWQRARaqQS9SLykJ9lNuM2lcZhk/mQ2J3T4n
	JhryldFCuTbubEvYegOyF84OWRDoNt5faTNfsy0PHWx/oJ4Wu10F9LkMWpgHyOiR/Xsf
	unDA==
X-Gm-Message-State: ABUngvdvh7Ka8plmyRHUonFsLKOFfSMsdHyjBB7fHc/MSaySaLD/V3lHRp3RiRERKE6wnLLNt8r4BncaaGNcuw==
X-Received: by 10.202.194.68 with SMTP id s65mr32752551oif.98.1478007491418;
	Tue, 01 Nov 2016 06:38:11 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.13.194 with HTTP; Tue, 1 Nov 2016 06:37:50 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1611010455040.19781@ca624034.mitel.com>
References: <alpine.LFD.2.20.1611010455040.19781@ca624034.mitel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 1 Nov 2016 06:37:50 -0700
X-Google-Sender-Auth: QVdzb_L3TkGGIe6obsqfS4lbaSY
Message-ID: <CABcZANkhAGHrMTfJ7GeYxUTvJWiFf74Y7eyHe60LvK_A5HeJ+w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why do some openstack layer.conf files add classes to BBFILES?
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
X-List-Received-Date: Tue, 01 Nov 2016 13:38:15 -0000
Content-Type: multipart/alternative; boundary=001a113dca6c806b8305403d6f68

--001a113dca6c806b8305403d6f68
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 1, 2016 at 1:57 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>   just noticed the following property for a bunch of the openstack
> layers at:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-cloud-services/tree/
>
> some of the layer.conf files contain the line:
>
> BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappe=
nd
> ${LAYERDIR}/classes/*.bbclass"
>
> why is the classes/ directory being appended to BBFILES? i thought the
> purpose of BBPATH was to contain locations of .conf and .bbclass
> files. i'm puzzled by the above.
>

You=E2=80=99re right to be puzzled, as that addition is pointless and will =
do
nothing useful.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113dca6c806b8305403d6f68
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Nov 1, 2016 at 1:57 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.c=
a</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5jn" =
class=3D"a3s aXjCH m1581f1d8c5ac84c1">=C2=A0 just noticed the following pro=
perty for a bunch of the openstack<br>
layers at:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-cloud-services/tr=
ee/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/<wbr>=
cgit/cgit.cgi/meta-cloud-<wbr>services/tree/</a><br>
<br>
some of the layer.conf files contain the line:<br>
<br>
BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.<wb=
r>bbappend ${LAYERDIR}/classes/*.bbclass&quot;<br>
<br>
why is the classes/ directory being appended to BBFILES? i thought the<br>
purpose of BBPATH was to contain locations of .conf and .bbclass<br>
files. i&#39;m puzzled by the above.</div></blockquote></div><br>You=E2=80=
=99re right to be puzzled, as that addition is pointless and will do nothin=
g useful.<br>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - Bi=
tBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software En=
gineer, Mentor Graphics</div>
</div></div>

--001a113dca6c806b8305403d6f68--
