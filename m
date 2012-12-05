Return-Path: <peachj@lexmark.com>
Received: from exprod8og102.obsmtp.com (exprod8og102.obsmtp.com [64.18.3.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7694E01275
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 05:22:35 -0800 (PST)
Received: from mail-qc0-f200.google.com ([209.85.216.200]) (using TLSv1) by
	exprod8ob102.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUL9Km2WDqWoxkQkw/ECrdOSpkbZWzpKN@postini.com;
	Wed, 05 Dec 2012 05:22:36 PST
Received: by mail-qc0-f200.google.com with SMTP id l42so7972113qco.11
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 05:22:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=dKqSeUu9qLAezHN80vb4yOGzUfytzY7nnqTTDOpZSuk=;
	b=TpB3ZbVvp+3k8Zsjks9ME2wmrlmQ+FC4KYPtQf5kOCASYBXSBrKGQjSaXSO3s5hWQc
	Y74DbAPTSFMo5r3bytiMwIHS10Y22eAwFWIT9dN+XihTfq1Nm74AlJTWqGjeN0oM3lsD
	R8udh62O+vG/UPTWoCdnBla02DWMBYch59x/ep5DbSEqt6pEz+fUp9jpbHSYM0yXomMS
	b4XIb04yX/fzHKHVfj9u/tbG7g0ZEdnfD4sxDRIDWqhb4MJiZ0vn11EdBeVqDIIy+xMp
	4CNITSbjoRLEcx8qkDHE2yhgVYgcfKOpBH9qhVUSSGbY3kT5MZNtZ/F/R2HHy/VM1Tca
	tFDg==
Received: by 10.224.180.10 with SMTP id bs10mr27356448qab.53.1354713754549;
	Wed, 05 Dec 2012 05:22:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.180.10 with SMTP id bs10mr27356427qab.53.1354713754310;
	Wed, 05 Dec 2012 05:22:34 -0800 (PST)
Received: by 10.49.48.196 with HTTP; Wed, 5 Dec 2012 05:22:34 -0800 (PST)
In-Reply-To: <CA+QkY1Ai5xukjvH-yt_0O=z8VNjnTT3_4edBJTs1N5J6RZnVTg@mail.gmail.com>
References: <CA+QkY1Ai5xukjvH-yt_0O=z8VNjnTT3_4edBJTs1N5J6RZnVTg@mail.gmail.com>
Date: Wed, 5 Dec 2012 08:22:34 -0500
Message-ID: <CA+QkY1CUk5C6Y_rBY-zgTizS68GfaWeWES44LKeiWUS=ZSX1bg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlr4nA16803e2iqfQlIy0Vf9yatVWXPs3+L70vwlCFGySx150wLt+MulfN78MHRRvXe08eOjLEAaCr1Vz8ZmxYmbdkGJQFtPEfrws3LOd1xi/mZdTK7uxeQVxMvBqsGC7NRcg1IdGfU0/ebS8k5QA7CxMLcTA==
Subject: Re: recrdeptask not working correctly?
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
X-List-Received-Date: Wed, 05 Dec 2012 13:22:36 -0000
Content-Type: multipart/alternative; boundary=20cf302ef9521916ba04d01ae06e

--20cf302ef9521916ba04d01ae06e
Content-Type: text/plain; charset=ISO-8859-1

Any thoughts on this?  Should I log a bug in bugzilla, or am I just doing
something wrong?


On Mon, Dec 3, 2012 at 10:57 AM, Jerrod Peach <peachj@lexmark.com> wrote:

> All,
>
> I noticed the changes to recrdeptask from Yocto 1.2 to Yocto 1.3.  I saw a
> number of "all" tasks in the classes change like this:
>
> -do_checkuriall[recrdeptask] = "do_checkuri"
> +do_checkuriall[recrdeptask] = "do_checkuriall do_checkuri"
>
> I have my own task that needs to work on all packages, and I assumed
> making the same change to my task would cause this to occur.  (Prior to
> this, I had noticed the task seemed to only be running on about 12
> packages, where it used to run on about 60.)  So, I made the change, and
> indeed started running on more packages.  It only ran on about 45 packages
> though, which I found curious.  So, I dug a little deeper and had bitbake
> spit out pn-buildlist for me (with the -g option).  That list showed around
> 75 packages.  That meant I was still not running on a pretty large number
> of packages.  Then I ran checkurilall.  I noticed it, too, was running on
> the same list of packages as my task, i.e. NOT all of them.
>
> Has recrdeptask changed in some way that now prevents a task from running
> on all packages in a dependency graph recursively?  Was this intentional?
>  Is there some other (more preferable?) way for me to cause a task to run
> on all packages in a dependency graph?
>
> Kind regards,
>
> Jerrod
>

--20cf302ef9521916ba04d01ae06e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Any thoughts on this? =A0Should I log a bug in bugzilla, or am I just doing=
 something wrong?<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Mon, Dec 3, 2012 at 10:57 AM, Jerrod Peach <span dir=3D"ltr">&lt;<a =
href=3D"mailto:peachj@lexmark.com" target=3D"_blank">peachj@lexmark.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">All,<div><br></div><div>I noticed the change=
s to recrdeptask from Yocto 1.2 to Yocto 1.3. =A0I saw a number of &quot;al=
l&quot; tasks in the classes change like this:</div>
<div><br></div><div><div>-do_checkuriall[recrdeptask] =3D &quot;do_checkuri=
&quot;</div>
<div>+do_checkuriall[recrdeptask] =3D &quot;do_checkuriall do_checkuri&quot=
;</div></div><div><br></div><div>I have my own task that needs to work on a=
ll packages, and I assumed making the same change to my task would cause th=
is to occur. =A0(Prior to this, I had noticed the task seemed to only be ru=
nning on about 12 packages, where it used to run on about 60.) =A0So, I mad=
e the change, and indeed started running on more packages. =A0It only ran o=
n about 45 packages though, which I found curious. =A0So, I dug a little de=
eper and had bitbake spit out pn-buildlist for me (with the -g option). =A0=
That list showed around 75 packages. =A0That meant I was still not running =
on a pretty large number of packages. =A0Then I ran checkurilall. =A0I noti=
ced it, too, was running on the same list of packages as my task, i.e. NOT =
all of them. =A0</div>

<div><br></div><div>Has recrdeptask changed in some way that now prevents a=
 task from running on all packages in a dependency graph recursively? =A0Wa=
s this intentional? =A0Is there some other (more preferable?) way for me to=
 cause a task to run on all packages in a dependency graph?</div>

<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div>
</blockquote></div><br></div>

--20cf302ef9521916ba04d01ae06e--
