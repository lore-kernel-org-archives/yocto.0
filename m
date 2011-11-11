Return-Path: <miketsukerman@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE248E0059D
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 21:21:37 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so4147284gyh.35
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 21:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DGzNSbiFhX1ZKM4nzgR5Z/9jAxh41luHxZ8UXNOz0tg=;
	b=BmrPTLNu893d9gFepqfyA17Wx1sAXZCK3W+2WJRHh7qmsqdrWGExxDDiDiIBzyO23b
	mZpFReLqvFFf+JkT3ZOdDVlOg9nB1kV40iukm4S4iOg9Adf+nD/C9mx/TXnEanTUXv3y
	35mzl/GKPUsAIfP8xMw3VCKZ2V8lVhyH0Qq9U=
MIME-Version: 1.0
Received: by 10.68.38.169 with SMTP id h9mr20775473pbk.113.1320988896484; Thu,
	10 Nov 2011 21:21:36 -0800 (PST)
Received: by 10.68.47.97 with HTTP; Thu, 10 Nov 2011 21:21:36 -0800 (PST)
Date: Fri, 11 Nov 2011 09:21:36 +0400
Message-ID: <CALs2vteD7aFagF1tvrtC58FRb_N9D0kTGaZSb4kJn+o9G7fTug@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: setscene package versions
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
X-List-Received-Date: Fri, 11 Nov 2011 05:21:38 -0000
Content-Type: multipart/alternative; boundary=bcaec520f1bded5b6704b16eb1a0

--bcaec520f1bded5b6704b16eb1a0
Content-Type: text/plain; charset=ISO-8859-1

>
> On Thu, Nov 10, 2011 at 5:05 AM, Mike Tsukerman <miketsukerman@gmail.com>
> wrote:
> > How can i change package version in setscene tasks?
> > In usual tasks PREFERRED_VERSION_pn working well,
> > but not affects setscene tasks

Can you please elaborate? Setscene isn't handled any differently than
> anything else with regard to preferences and version selection. I'd
> suggest going back and explaining the real problem you're hitting.


If it will be more clear for you, my problem is:
I want to switch to rpm 4, i've wrote some recipes and have rpm 4 working.
( PREFERRED_VERSION_rpm = "4.9.1.2" in floating_revisions.inc )

But for setscene tasks it's not working, systems takes rpm-native as 5.4.0.
(PREFERRED_VERSION_rpm-native also did not work)

-- 
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--bcaec520f1bded5b6704b16eb1a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-right: 0=
px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-=
left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex=
; ">
<span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); font-fami=
ly: arial, sans-serif; font-size: 13px; background-color: rgba(255, 255, 25=
5, 0.917969); ">On Thu, Nov 10, 2011 at 5:05 AM, Mike Tsukerman &lt;<a href=
=3D"mailto:miketsukerman@gmail.com" style=3D"color: rgb(17, 85, 204); ">mik=
etsukerman@gmail.com</a>&gt; wrote:<br>
</span><span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgba(255, =
255, 255, 0.917969); ">&gt; How can i change package version in setscene ta=
sks?<br>
</span><span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgba(255, =
255, 255, 0.917969); ">&gt; In usual tasks PREFERRED_VERSION_pn working wel=
l,<br>
</span><span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgba(255, =
255, 255, 0.917969); ">&gt; but not affects setscene tasks</span></blockquo=
te>
<blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-right: 0=
px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-=
left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex=
; ">
<span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); font-fami=
ly: arial, sans-serif; font-size: 13px; background-color: rgba(255, 255, 25=
5, 0.917969); ">Can you please elaborate? Setscene isn&#39;t handled any di=
fferently than<br>
</span><span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgba(255, =
255, 255, 0.917969); ">anything else with regard to preferences and version=
 selection. I&#39;d<br>
</span><span class=3D"Apple-style-span" style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgba(255, =
255, 255, 0.917969); ">suggest going back and explaining the real problem y=
ou&#39;re hitting.</span></blockquote>
<div>=A0</div><div>If it will be more clear for you, my problem is:</div><d=
iv>I want to switch to rpm 4, i&#39;ve wrote some recipes and have rpm 4 wo=
rking.</div><div>( PREFERRED_VERSION_rpm =3D &quot;4.9.1.2&quot; in floatin=
g_revisions.inc )</div>
<div><br></div><div>But for setscene tasks it&#39;s not working, systems ta=
kes rpm-native as 5.4.0.</div><div>(PREFERRED_VERSION_rpm-native also did n=
ot work)</div><div><br></div>-- <br><font style=3D"color:rgb(51, 51, 51)" s=
ize=3D"2">Best regards, Mike Tsukerman<br>
<br><span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:mik=
etsukerman@gmail.com" target=3D"_blank">miketsukerman@gmail.com</a><br><spa=
n style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzon@jabn=
et.org" target=3D"_blank">warzon@jabnet.org</a><br>
<span style=3D"color:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>

--bcaec520f1bded5b6704b16eb1a0--
