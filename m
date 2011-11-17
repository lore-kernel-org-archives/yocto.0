Return-Path: <brduffy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA857E0059F
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 14:17:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenq10 with SMTP id q10so2303808yen.35
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 14:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=FriRIS1MlcNoF1peqpn8LZJvzVXeCbQD3GqEGCaXtdM=;
	b=JxeZcCZ4MsDs8lviTA1JR2ytseCh8/kpbX9pVcGF1iSzkJ+hnFczFfeljMvEr2umEC
	nKkUh1gkchfrv9NFzYpaKsaWB0418SfPWA+emy9m3kmSXuM61rUPHu/6MOTa9CqHB+vj
	302pT9FLJat2yfTsmnqVhg9TVlKTtpGjw5hGA=
MIME-Version: 1.0
Received: by 10.236.168.2 with SMTP id j2mr937942yhl.10.1321568247985; Thu, 17
	Nov 2011 14:17:27 -0800 (PST)
Received: by 10.236.111.17 with HTTP; Thu, 17 Nov 2011 14:17:27 -0800 (PST)
In-Reply-To: <94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
Date: Thu, 17 Nov 2011 17:17:27 -0500
Message-ID: <CAHrDPkr+jeDi13e6g=DQ37yH3HnRVF1124LA1kuSP5v85u0Wzw@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Thu, 17 Nov 2011 22:17:29 -0000
Content-Type: multipart/alternative; boundary=20cf305b121ef7b66e04b1f59571

--20cf305b121ef7b66e04b1f59571
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 17, 2011 at 4:38 PM, Chris Tapp <opensource@keylevel.com> wrote:

> On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:
>
>  Mark & everyone else listening:
>>
>> Would you say that (1) the need for a recipe and (2) the requirement to
>> cross-compile are two of the most major usability or learning-curve
>> disadvantages of working with the Yocto Project (and oe-core)? What would
>> be a third disadvantage from a usability standpoint?
>>
>> Another way to put it: if you could change three things about the Yocto
>> Project to make it more approachable for someone who has never used it
>> before, what would they be?
>>
>
> As another very experienced embedded systems developer who is relatively
> new to embedded linux I would say that documentation and worked examples
> are what I would really be after.
>
> It can be really frustrating when you can't get something going because
> you don't understand the phrases / terminology that's being used and it
> isn't readily available via the documentation. I've seen quite a few posts
> on here relating to the documentation and it does look like good progress
> is being made. As someone said earlier in this thread, it would be good it
> run stuff through new (or relatively new) adopters to see if they can get
> the examples to work without a fight. I'm more than happy to help (and
> learn!).
>
> I to started with OE and failed to get a build to complete. Yocto got me
> there first time, so it is already much better for a novice 'baker' !
>
> Some worked examples for 'how to do xxx' would also be nice. E.g.
>
> 1) How do I configure the kernel ?
> 2) What do I need to do when I change my recipe to ensure that the changes
> make it in to the image ?
> 3) How do I change and add startup scripts ?
> 4) How do I add data files to the image ?
> 5) How do I make sure dependencies (e.g. libraries) are included in the
> image ? i.e. what do DEPENDS, RDEPENDS, etc. do.
> 6) How can I use a layer to hold my project files ?
> 7) Do I need to delete tmp/ and rebuild to ensure I've got a valid project
> build configured ? (i.e. it doesn't rely on staged items that don't build
> when I bitbake MyProject).
> 8) How do I make my existing autobuild project in to a recipe ?
> 9) How do I set / change the root password ?
>
> These items would help explain how to create a recipe and to use bbappend.
> Ideally they should be worded so that they can be followed by someone with
> a general embedded background who has minimal exposure to embedded linux.
> However, it probably doesn't want to be an embedded linux primer.
>
> This project is already easier to use than many others and is supported by
> a really knowledgeable group who are willing to help newcomers out. As it
> grows it would be unreasonable to expect the same (relatively small) group
> to be able to support a much wider user-base. Comprehensive documentation
> and non-trivial worked example should help to reduce the workload and allow
> the group to assist those who have a genuine need of help.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

I disagree somewhat. I think the goal, as implied on the website homepage
video, is (and should be) to include new comers and foster an environment
where embedded development is somewhat more demystified. Experienced
embedded developers may be inclined to stick with what they know works for
them, but someone who decides they have a cool idea and is a good
developer, but never has built an embedded system before would be the
better user to target in my opinion. The team seems to be making good
progress in that direction and I will add my hat to the school of thought
that encourages focusing on extremely good documentation with simple and
advanced use cases, together with a workflow example for getting from
application idea to device. It may be a lot of work but without it you lose
so many potential developers.

-- 
Duff

--20cf305b121ef7b66e04b1f59571
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Nov 17, 2011 at 4:38 PM, Chris T=
app <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com">openso=
urce@keylevel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Mark &amp; everyone else listening:<br>
<br>
Would you say that (1) the need for a recipe and (2) the requirement to cro=
ss-compile are two of the most major usability or learning-curve disadvanta=
ges of working with the Yocto Project (and oe-core)? What would be a third =
disadvantage from a usability standpoint?<br>

<br>
Another way to put it: if you could change three things about the Yocto Pro=
ject to make it more approachable for someone who has never used it before,=
 what would they be?<br>
</blockquote>
<br></div>
As another very experienced embedded systems developer who is relatively ne=
w to embedded linux I would say that documentation and worked examples are =
what I would really be after.<br>
<br>
It can be really frustrating when you can&#39;t get something going because=
 you don&#39;t understand the phrases / terminology that&#39;s being used a=
nd it isn&#39;t readily available via the documentation. I&#39;ve seen quit=
e a few posts on here relating to the documentation and it does look like g=
ood progress is being made. As someone said earlier in this thread, it woul=
d be good it run stuff through new (or relatively new) adopters to see if t=
hey can get the examples to work without a fight. I&#39;m more than happy t=
o help (and learn!).<br>

<br>
I to started with OE and failed to get a build to complete. Yocto got me th=
ere first time, so it is already much better for a novice &#39;baker&#39; !=
<br>
<br>
Some worked examples for &#39;how to do xxx&#39; would also be nice. E.g.<b=
r>
<br>
1) How do I configure the kernel ?<br>
2) What do I need to do when I change my recipe to ensure that the changes =
make it in to the image ?<br>
3) How do I change and add startup scripts ?<br>
4) How do I add data files to the image ?<br>
5) How do I make sure dependencies (e.g. libraries) are included in the ima=
ge ? i.e. what do DEPENDS, RDEPENDS, etc. do.<br>
6) How can I use a layer to hold my project files ?<br>
7) Do I need to delete tmp/ and rebuild to ensure I&#39;ve got a valid proj=
ect build configured ? (i.e. it doesn&#39;t rely on staged items that don&#=
39;t build when I bitbake MyProject).<br>
8) How do I make my existing autobuild project in to a recipe ?<br>
9) How do I set / change the root password ?<br>
<br>
These items would help explain how to create a recipe and to use bbappend. =
Ideally they should be worded so that they can be followed by someone with =
a general embedded background who has minimal exposure to embedded linux. H=
owever, it probably doesn&#39;t want to be an embedded linux primer.<br>

<br>
This project is already easier to use than many others and is supported by =
a really knowledgeable group who are willing to help newcomers out. As it g=
rows it would be unreasonable to expect the same (relatively small) group t=
o be able to support a much wider user-base. Comprehensive documentation an=
d non-trivial worked example should help to reduce the workload and allow t=
he group to assist those who have a genuine need of help.<br>

<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensource@key=
level.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><span class=3D"Apple-style-span" style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px=
; background-color: rgba(255, 255, 255, 0.917969); ">I disagree somewhat. I=
 think the goal, as implied on the website homepage video, is (and should b=
e) to include new comers and foster an environment where embedded developme=
nt is somewhat more demystified. Experienced embedded developers may be inc=
lined to stick with what they know works for them, but someone who decides =
they have a cool idea and is a good developer, but never has built an embed=
ded system before would be the better user to target in my opinion. The tea=
m seems to be making good progress in that direction and I will add my hat =
to the school of thought that encourages focusing on extremely good documen=
tation with simple and advanced use cases, together with a workflow example=
 for getting from application idea to device. It may be a lot of work but w=
ithout it you lose so many potential developers.</span><br clear=3D"all">
<div><br></div>-- <br>Duff<br>

--20cf305b121ef7b66e04b1f59571--
