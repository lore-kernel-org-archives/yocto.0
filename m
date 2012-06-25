Return-Path: <andrei@gherzan.ro>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D34EE01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 01:45:50 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so2974388ghb.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 01:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=JPWG5JWKF/ecTJJEtnPIcBIJGTFW5c+f2vOtPWLAIXU=;
	b=OAWFWiZMNIwr+1KLENANMmOpVcs1hrDl/+pxOdWAZKHSug42DkMM0pvtPMGc6hfdxU
	BQOFiypC8MY0GGku4oMQ4SIg8tcCYgpgdqt4mgaRigN+IXMQVC1G/wZoE1P2YvNYi3uv
	24xiFELX92TkRv1mQ9gbpaluOJWSVZsVIHV8qciYz7g8PhSfg8bDVLIvBE4j801GRcby
	1obIZKBwYBZUlW8GyVuuD4kVbUHpqCihegh0ZTXl6pO1rL/v7X9S1o9lNSOzKU19t8wA
	yy88uLyVb1cGFLvISJWjX+NhLV3Y/calQCBo+pgGoG2/sFYHT4Skfmq0NWXs6HSdYmHc
	M8+g==
Received: by 10.50.171.105 with SMTP id at9mr7382211igc.28.1340613948984; Mon,
	25 Jun 2012 01:45:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.10.161 with HTTP; Mon, 25 Jun 2012 01:45:28 -0700 (PDT)
X-Originating-IP: [79.117.46.157]
In-Reply-To: <4FE73AF6.2060008@gmail.com>
References: <4FE73AF6.2060008@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 25 Jun 2012 11:45:28 +0300
Message-ID: <CAK18fxFc6AhKnviHNfYrVmH5EwR8AAuwHtU7U_O_y1w4vnhoLg@mail.gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQlXKmCA3ttFH+g+JI4g0WtQNcBRqTE0BAW6wOT54bl9zbwZVfLwz0RIC0tzoOryvdkw/qK6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Mon, 25 Jun 2012 08:45:50 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9fb535cf2504c348027e

--e89a8f3b9fb535cf2504c348027e
Content-Type: text/plain; charset=ISO-8859-1

That would be a good idea in my opinion too as i tried to make doc last
week and i ended up dropping this task as i didn't have the time to search
for those xml deps.

@g

On Sun, Jun 24, 2012 at 7:06 PM, jfabernathy <jfabernathy@gmail.com> wrote:

> I had a need to look at the bitbake manual in the poky/bitbake/doc/manual
> directory and tried to make pdf.  I had all the prerequisites listed in the
> QS guide.  However, I found the make failed due to a number of xml related
> tools being missing.  I installed those and got the pdf manual generated.
>
> Should we add those xml tools to the prerequisites?  BTW, I'm using denzil
> branch and referring to the QS guide 1.2.
>
> Jim A
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--e89a8f3b9fb535cf2504c348027e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

That would be a good idea in my opinion too as i tried to make doc last wee=
k and i ended up dropping this task as i didn&#39;t have the time to search=
 for those xml deps.<br>
<br>@g<br><br><div class=3D"gmail_quote">On Sun, Jun 24, 2012 at 7:06 PM, j=
fabernathy <span dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" t=
arget=3D"_blank">jfabernathy@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">

I had a need to look at the bitbake manual in the poky/bitbake/doc/manual d=
irectory and tried to make pdf. =A0I had all the prerequisites listed in th=
e QS guide. =A0However, I found the make failed due to a number of xml rela=
ted tools being missing. =A0I installed those and got the pdf manual genera=
ted.<br>


<br>
Should we add those xml tools to the prerequisites? =A0BTW, I&#39;m using d=
enzil branch and referring to the QS guide 1.2.<br>
<br>
Jim A<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br>

--e89a8f3b9fb535cf2504c348027e--
