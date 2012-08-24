Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F6D3E0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 13:56:39 -0700 (PDT)
Received: by eekd41 with SMTP id d41so962537eek.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 13:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Dx4+yvYIEOpURJDEPjw3cWkPq/CXox6xx53/6pLhRIk=;
	b=NUGh1T49mSaQUn+z4Bului0swENtnbG2S8F42NGhQoNIokC9LMk+C9rOt2XBuypdO6
	8F3IFNWpuaIJkc8YW7dLZZBXBFH7YdrykB/aa/DmEjy4zA/EzHmq1+bGURSskuaLRCV5
	Nd6FvaYSFUVP7p/XOzcOfSyWrCTOxcO7sQSX5U/LeKIK1oAenRJIVEP6/yotPQb05pdY
	crkivm3whIaW01u35nNlH6bxizSNkemeRkBXC6uCDygIEFz2a/q0E1tmY+VxiZQpjPFj
	lvwBOoy5C0A6sy2OO7GEH4CcMGs2WtXyL+pRiqAIrVTVTF15DUUCvpAcNesz8qrx27LQ
	9b+Q==
MIME-Version: 1.0
Received: by 10.14.202.131 with SMTP id d3mr9259096eeo.32.1345841798466; Fri,
	24 Aug 2012 13:56:38 -0700 (PDT)
Received: by 10.14.2.5 with HTTP; Fri, 24 Aug 2012 13:56:38 -0700 (PDT)
In-Reply-To: <E76AA88E-0C71-4531-B5B4-B1C0074C7DB7@gmail.com>
References: <E76AA88E-0C71-4531-B5B4-B1C0074C7DB7@gmail.com>
Date: Fri, 24 Aug 2012 13:56:38 -0700
Message-ID: <CAMKF1spMZtVPhS+iriB2wk3imKUYcsFuZVGuaViUxHgBuCdeDw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: New task progress interface with Yocto 1.3 ?
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
X-List-Received-Date: Fri, 24 Aug 2012 20:56:40 -0000
Content-Type: multipart/alternative; boundary=047d7b34372a524c4404c809362a

--047d7b34372a524c4404c809362a
Content-Type: text/plain; charset=UTF-8

Yes isn't it cool

On Friday, August 24, 2012, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>       I'm building against the latest yocto master branch, and noticed
that the task progress now summarizes the total number of active theads:
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 6 running tasks (334 of 1485):
> 0: icu-native-3.6-r9 do_compile (pid 58438)
> 1: python-native-2.7.3-r0.1 do_compile (pid 31435)
> 2: popt-native-1.16-r2 do_configure (pid 55290)
> 3: gnutls-native-2.12.20-r8.3 do_compile (pid 55897)
> 4: acl-native-2.2.51-r3 do_configure (pid 56626)
> 5: libpcre-native-8.31-r0 do_configure (pid 62244)
> Is this update part of the upcoming Yocto 1.3 release?
> Best regards,
> Elvis Dowson

--047d7b34372a524c4404c809362a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes isn&#39;t it cool<br><br>On Friday, August 24, 2012, Elvis Dowson &lt;<=
a href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; wro=
te:<br>&gt; Hi,<br>&gt; =C2=A0 =C2=A0 =C2=A0 I&#39;m building against the l=
atest yocto master branch, and noticed that the task progress now summarize=
s the total number of active theads:<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>&gt; NOTE: Prep=
aring runqueue<br>&gt; NOTE: Executing SetScene Tasks<br>&gt; NOTE: Executi=
ng RunQueue Tasks<br>&gt; Currently 6 running tasks (334 of 1485):<br>&gt; =
0: icu-native-3.6-r9 do_compile (pid 58438)<br>
&gt; 1: python-native-2.7.3-r0.1 do_compile (pid 31435)<br>&gt; 2: popt-nat=
ive-1.16-r2 do_configure (pid 55290)<br>&gt; 3: gnutls-native-2.12.20-r8.3 =
do_compile (pid 55897)<br>&gt; 4: acl-native-2.2.51-r3 do_configure (pid 56=
626)<br>
&gt; 5: libpcre-native-8.31-r0 do_configure (pid 62244)<br>&gt; Is this upd=
ate part of the upcoming Yocto 1.3 release?<br>&gt; Best regards,<br>&gt; E=
lvis Dowson

--047d7b34372a524c4404c809362a--
