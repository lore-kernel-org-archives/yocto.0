Return-Path: <kergoth@gmail.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0758E00BEF
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 08:38:35 -0700 (PDT)
Received: by mail-bk0-f43.google.com with SMTP id v15so607106bkz.16
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 08:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=dvYQY34rf5sEfjeu01FiOx7m1g5IPSMw1CTyVVZ5S/Y=;
	b=jU+if0FxLwqLdH6CCfuTY1A9pJvVJ0V12iyKPkP1ueCE5LjJ7BeVUaQC3JSC3SgdyD
	rVqYT/DOeTv+ZWBHMYH6Yya49179U228F5GUYqkR9mQanr0XkzCvzwAbx1XLHMtM1+CO
	jfeKY49O2jO4s7wtw0IkbIyIOETbDvGAc9WbyO4hSj7ispaFP5j5Y2RzgNPm80zQAkWd
	HxcPBKhjgDRmDXAwFZ3Vw0nsPUl+K8fxKA/2swm6vARgPsTRxewXz1t+3d0qoaWUWo4I
	07yUWCQvSFMZhcvmeSyBIIw4dRUTCc2pc2IiBXSExDizWV9Qvss9MQEmpSQGgrYjLiFd
	tIMw==
X-Received: by 10.112.200.130 with SMTP id js2mr3199990lbc.28.1396971513572;
	Tue, 08 Apr 2014 08:38:33 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Tue, 8 Apr 2014 08:38:13 -0700 (PDT)
In-Reply-To: <534416F0.10109@enea.com>
References: <534416F0.10109@enea.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 8 Apr 2014 08:38:13 -0700
X-Google-Sender-Auth: ERbR1s6I14skj1l_nzkVBwix_GM
Message-ID: <CABcZAN=oz+-oMJozmjrrTkUDb76t_OdkgAJoQdMM5THEHs3Jtw@mail.gmail.com>
To: Vali Cobelea <valentin.cobelea@enea.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Tue, 08 Apr 2014 15:38:36 -0000
Content-Type: multipart/alternative; boundary=001a11c331b6d3f35004f689c67f

--001a11c331b6d3f35004f689c67f
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 8, 2014 at 8:34 AM, Vali Cobelea <valentin.cobelea@enea.com>wrote:

> Here at ENEA we decided to take the initiative regarding the CGL
> compliance when it comes to the Yocto Project.
> For this we started the work on a dedicated layer called 'meta-cgl' which
> can be accessed / cloned from here:
>
>  http://git.enea.com/git/?p=linux/meta-cgl.git
>  git clone git@git.enea.com:linux/meta-cgl
>
> Have a look of the things we got there so far, please remember that there
> is still plenty of work to be done (layer architecture, CGL requirements
> coverage mode and so on).
> It is a little bit more than a stub layer, consider it a starting point
> for the direction we would like to have with this layer.
>
> Any input is much appreciated, lets keep the discussion by this email
> thread and see where it goes.
>

Is there no anonymous clone url, or are you giving us your ssh keys? ;)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c331b6d3f35004f689c67f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Apr 8, 2014 at 8:34 AM, Vali Cobelea <span dir=3D"ltr">&lt;<a href=
=3D"mailto:valentin.cobelea@enea.com" target=3D"_blank">valentin.cobelea@en=
ea.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":vt" class=3D"a3s" style=3D"overf=
low:hidden">Here at ENEA we decided to take the initiative regarding the CG=
L compliance when it comes to the Yocto Project.<br>


For this we started the work on a dedicated layer called &#39;meta-cgl&#39;=
 which can be accessed / cloned from here:<br>
<br>
=C2=A0<a href=3D"http://git.enea.com/git/?p=3Dlinux/meta-cgl.git" target=3D=
"_blank">http://git.enea.com/git/?p=3D<u></u>linux/meta-cgl.git</a><br>
=C2=A0git clone git@git.enea.com:linux/meta-<u></u>cgl<br>
<br>
Have a look of the things we got there so far, please remember that there i=
s still plenty of work to be done (layer architecture, CGL requirements cov=
erage mode and so on).<br>
It is a little bit more than a stub layer, consider it a starting point for=
 the direction we would like to have with this layer.<br>
<br>
Any input is much appreciated, lets keep the discussion by this email threa=
d and see where it goes.</div></blockquote></div><br>Is there no anonymous =
clone url, or are you giving us your ssh keys? ;)<br>-- <br>Christopher Lar=
son<br>

clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<b=
r>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c331b6d3f35004f689c67f--
