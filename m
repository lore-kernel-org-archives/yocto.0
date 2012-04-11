Return-Path: <kergoth@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE9DE00596
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:46:31 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so802281qcs.35
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=rmSVGWiyyQUYB3KzKTzF4GGrkn3TTAFN8Td28sdn9rA=;
	b=Po5iXv6/W0XARHjwxlJcmjZXhJPm2TPNWlAaCFJg/YbCpN6xKbSI75vy84QGFElFdE
	vQTEJsWekcI+lNvr7PaUmsPZn4wQyJQsMhqPSDLXzV3GglNKe5bLHVUhEV8m3pjQw8X6
	vDzRKH7+6sjcWWXdSGDVUvdm+q0KQpDMrgDoIZgskxz9dC+hRtcloo37jK4r66Bp7NLV
	kYXY/t7nQrHYIOk0W5Dr64o7S6HWXl/drhdBS0ZhqunguOhC2sRWyHgF4Nwto0AlWXNF
	TXrBFymAZkgcVjxdxlJyypO1OrPNFs1dDLbc+pOWyz7wrM/S7vR1bmxtww4LC/D+lkL/
	hfdw==
Received: by 10.224.33.134 with SMTP id h6mr2103037qad.28.1334159190376; Wed,
	11 Apr 2012 08:46:30 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.79.79 with HTTP; Wed, 11 Apr 2012 08:46:10 -0700 (PDT)
In-Reply-To: <CAEsOVNev-JtaYg9oxKMewu8tWnQL4FF9sxdDttv+VBmMbRL0og@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237945186473@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNev-JtaYg9oxKMewu8tWnQL4FF9sxdDttv+VBmMbRL0og@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 11 Apr 2012 08:46:10 -0700
X-Google-Sender-Auth: i0IoKtwim5zYV-aqaMqslP81ano
Message-ID: <CABcZANnpe08W5enLiHScLd6vcqW374jiJYxe7kR-iCUhRNLpnA@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: package requirements for CentOS
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
X-List-Received-Date: Wed, 11 Apr 2012 15:46:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 11, 2012 at 8:43 AM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> On Tue, Apr 10, 2012 at 5:13 PM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
>> I have recently added the CentOS distribution to the YP QS.=C2=A0 The li=
st now
>> includes Ubuntu, Fedora, openSUSE, and CentOS.=C2=A0 Further down in the=
 manual
>> there are sections detailing the package requirements for Ubuntu, Fedora=
,
>> and openSUSE.=C2=A0 I should address CentOS.=C2=A0 Here is the link to t=
he sections
>> currently there.=C2=A0 Does anyone know the package requirements for Cen=
tOS?
>>
>>
>>
>> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-q=
s.html#packages
>
> We have some idea. The biggest difference looks to be chrpath is not
> available on CentOS/RHEL 5.x distro's by default. I thought the same
> could be said of python2.6 so I'm not sure at the moment how we handle
> that. (This is for edison so it should still be applicable)


We handle python 2.6 by adding the fedora EL yum repository and
installing python2.6 from there (incidentally, other useful things
like git are in that repo).
--=20
Christopher Larson

