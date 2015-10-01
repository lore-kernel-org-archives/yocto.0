Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25CF5E010E4; Thu,  1 Oct 2015 09:55:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAFFE00927
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 09:55:11 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so23102783igc.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 09:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=YAO2OjNdQu+eL+YIH9pfMWqaRHX79JT5OVMUpBXDhcs=;
	b=sut2tsLn/xUDNa9lU3lLRMooQEcttbXpOHC1s8IwL78hpn0pNbTOtmkXnO0mSk1/MM
	NnvVj4EKjue3oomIm3ZZFrA97AyPJs+zEWqyP8w+ZMEm1adnzKRNggaplvtIYB3ZgJUJ
	PV6sdMXeeGz9rqTdx0vk2/G1uFN+lQ43vr12dDj8/kqp23m2AH71OVWM9WAuHyj/Fyyl
	1cKpQC1BGmazKDczHZR7mof76YdIgDGDB+0mGwstAQLaBDPevI3xJKDeKJzLoR6xLOeR
	MeWwiGm4r9i3mGjfssgJAjzBUIK91/YpqsVzlztOUAey1T3KpOK5AKzU1BZAAs8j5pvG
	+Z8w==
X-Received: by 10.50.43.170 with SMTP id x10mr4532264igl.68.1443718511091;
	Thu, 01 Oct 2015 09:55:11 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Thu, 1 Oct 2015 09:54:51 -0700 (PDT)
In-Reply-To: <560D63FC.1040604@mlbassoc.com>
References: <560BD1F3.1090907@mlbassoc.com>
	<F14AEF751653024287138321000C846AF48D2103@BOS-DAG1.zone1.flir.net>
	<560D63FC.1040604@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 1 Oct 2015 09:54:51 -0700
X-Google-Sender-Auth: BXvmaRkU3SZF_FEKPFUz90gITiM
Message-ID: <CABcZANm3twj-c7gnctQNiwfXr64tV9nDbLFYEGyu+gPy+1TvWQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Safely cleaning 'downloads'
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
X-List-Received-Date: Thu, 01 Oct 2015 16:55:14 -0000
Content-Type: multipart/alternative; boundary=089e01176cad02690605210de914

--089e01176cad02690605210de914
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 1, 2015 at 9:49 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-10-01 10:38, Smith, Virgil wrote:
>
>> The following is roughly the procedure I follow and that works for me.
>> Maybe someone could chime in with how some of this should be trimmed based
>> on yocto/bitbake intent/design.
>> Even so I'd probably stick with this level of extremism because without a
>> known good backup of your downloads(sources) you may be incapable of
>> (tweaking and) rebuilding your products if anything happens to your build
>> server.
>>
>> The only reason I've seen that simply deleting the downloads folder
>> causes problems is that external servers/content go away, violate their git
>> history, or replace files with non-identical contents.
>>
>>
>> Warning: The following does not maintain PR server information, so
>> automatic upgrading of your own packages could break.  If you rely on this
>> work out how to extract that information (and back it up regularly).
>>
>> 1. rename/move your current downloads folder and create a new one.
>> 2. for all of your product build configurations empty out the following
>> folders
>> 2.1 cache
>> 2.2 state-cache
>> 2.3 tmp
>> 3. build (bitbake) all your product images with all appropriate
>> configuration variances
>> 4. run the following command to extract the unexpanded sources from
>> downloads
>> find -H downloads -maxdepth 1 \
>>       -not -type d   -and   -not -name "*.done" \
>>       -exec cp -L {} sources-tmp \;
>>
>> You now have everything you *currently* need for a sources mirror in the
>> sources-tmp folder.
>>
>> 5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.
>> 6. Check those contents into some form of revision control (even if that
>> is just a manual set of backup folders/media).
>>
>>
>> Yes this is costs time and space, you just have to decide how much your
>> images and how much being able to reproduce them (with or without 'small'
>> changes) is worth.
>>
>
> I'm already doing more or less this same sequence.  I use these commands to
> stage the downloaded files to my mirror (/work/misc/Poky/sources for
> historical reasons)
>   ( cd downloads;
>     find . -maxdepth 1 -type f | grep -v '.lock$' | grep -v '.done$'
> >/tmp/files.$$;
>     rsync -auv --files-from=/tmp/files.$$ . /work/misc/Poky/sources
>   )
>
> This works very well (I've been doing it for many years).  The issue I'm
> trying
> to work on now is that my script leaves 'downloads' possibly full of
> files, especially
> if there are new versions that have just been downloaded.  This is
> especially noticeable
> for the tarballs of GIT trees - there are a number that I need/use that
> are measured in
> gigabytes (e.g. the RaspberryPi board firmware is 4194568645 bytes as of
> 2015-07-20!)
> Once I've saved these to my mirror(s), I'd like to be able to purge them
> from the local
> download directory in my builds.  As mentioned, I've found that just
> wiping that in a
> build tree tends to break things quite badly.  Of course I can always
> start over with
> a new build tree, but that also defeats the purpose of incremental builds.


I'd think something like this would get the job done:

1. Do a build of all your supported machines and configurations with
BB_GENERATE_MIRROR_TARBALLS=1 to ensure you have current, not out of date
scm tarballs.

2. Set up builds of all your supported machines and configurations, using a
new DL_DIR, with PREMIRRORS pointing to the old DL_DIR.

3. Either clean up the old DL_DIR by access time before you kicked off the
builds, or resolve the symlinks in the new DL_DIR and remove the old.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01176cad02690605210de914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Oct 1, 2015 at 9:49 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 2015-10-=
01 10:38, Smith, Virgil wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
The following is roughly the procedure I follow and that works for me.=C2=
=A0 Maybe someone could chime in with how some of this should be trimmed ba=
sed on yocto/bitbake intent/design.<br>
Even so I&#39;d probably stick with this level of extremism because without=
 a known good backup of your downloads(sources) you may be incapable of (tw=
eaking and) rebuilding your products if anything happens to your build serv=
er.<br>
<br>
The only reason I&#39;ve seen that simply deleting the downloads folder cau=
ses problems is that external servers/content go away, violate their git hi=
story, or replace files with non-identical contents.<br>
<br>
<br>
Warning: The following does not maintain PR server information, so automati=
c upgrading of your own packages could break.=C2=A0 If you rely on this wor=
k out how to extract that information (and back it up regularly).<br>
<br>
1. rename/move your current downloads folder and create a new one.<br>
2. for all of your product build configurations empty out the following fol=
ders<br>
2.1 cache<br>
2.2 state-cache<br>
2.3 tmp<br>
3. build (bitbake) all your product images with all appropriate configurati=
on variances<br>
4. run the following command to extract the unexpanded sources from downloa=
ds<br>
find -H downloads -maxdepth 1 \<br>
=C2=A0 =C2=A0 =C2=A0 -not -type d=C2=A0 =C2=A0-and=C2=A0 =C2=A0-not -name &=
quot;*.done&quot; \<br>
=C2=A0 =C2=A0 =C2=A0 -exec cp -L {} sources-tmp \;<br>
<br>
You now have everything you *currently* need for a sources mirror in the so=
urces-tmp folder.<br>
<br>
5. move sources-tmp to wherever/whatever backs your SOURCE_MIRROR_URL.<br>
6. Check those contents into some form of revision control (even if that is=
 just a manual set of backup folders/media).<br>
<br>
<br>
Yes this is costs time and space, you just have to decide how much your ima=
ges and how much being able to reproduce them (with or without &#39;small&#=
39; changes) is worth.<br>
</blockquote>
<br></span>
I&#39;m already doing more or less this same sequence.=C2=A0 I use these co=
mmands to<br>
stage the downloaded files to my mirror (/work/misc/Poky/sources for histor=
ical reasons)<br>
=C2=A0 ( cd downloads;<br>
=C2=A0 =C2=A0 find . -maxdepth 1 -type f | grep -v &#39;.lock$&#39; | grep =
-v &#39;.done$&#39; &gt;/tmp/files.$$;<br>
=C2=A0 =C2=A0 rsync -auv --files-from=3D/tmp/files.$$ . /work/misc/Poky/sou=
rces<br>
=C2=A0 )<br>
<br>
This works very well (I&#39;ve been doing it for many years).=C2=A0 The iss=
ue I&#39;m trying<br>
to work on now is that my script leaves &#39;downloads&#39; possibly full o=
f files, especially<br>
if there are new versions that have just been downloaded.=C2=A0 This is esp=
ecially noticeable<br>
for the tarballs of GIT trees - there are a number that I need/use that are=
 measured in<br>
gigabytes (e.g. the RaspberryPi board firmware is <a href=3D"tel:4194568645=
" value=3D"+14194568645" target=3D"_blank">4194568645</a> bytes as of 2015-=
07-20!)<br>
Once I&#39;ve saved these to my mirror(s), I&#39;d like to be able to purge=
 them from the local<br>
download directory in my builds.=C2=A0 As mentioned, I&#39;ve found that ju=
st wiping that in a<br>
build tree tends to break things quite badly.=C2=A0 Of course I can always =
start over with<br>
a new build tree, but that also defeats the purpose of incremental builds.<=
/blockquote></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">I&#39;d think something like this would get the job done:</div><div =
class=3D"gmail_extra"><br></div>1. Do a build of all your supported machine=
s and configurations with BB_GENERATE_MIRROR_TARBALLS=3D1 to ensure you hav=
e current, not out of date scm tarballs.</div><div class=3D"gmail_extra"><b=
r>2. Set up builds of all your supported machines and configurations, using=
 a new DL_DIR, with PREMIRRORS pointing to the old DL_DIR.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">3. Either clean up th=
e old DL_DIR by access time before you kicked off the builds, or resolve th=
e symlinks in the new DL_DIR and remove the old.<br>-- <br><div class=3D"gm=
ail_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder =
- BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwar=
e Engineer, Mentor Graphics</div>
</div></div>

--089e01176cad02690605210de914--
