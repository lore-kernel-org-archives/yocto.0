Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 161C7E00406; Thu,  3 Dec 2015 14:54:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C495DE00321
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 14:53:49 -0800 (PST)
Received: by lfs39 with SMTP id 39so97302948lfs.3
	for <yocto@yoctoproject.org>; Thu, 03 Dec 2015 14:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e76yY6zzJuV2chYi/I3p1TBl9qzFLkaSTrU4iR6Ju3M=;
	b=WOibbTUz+XX+wBPcBR7sLaX+juIChx+ObW26e1qs2/wC9kv8HxyP2gpUsMR0WR06ST
	72gLXOjyCMKMFOqPKCjAgizap37kPY5UY7v3ANWPfDAy0Oo3ZjqR1gOCuTPWTh8caE46
	t0SVi6ndW3F+RIVVdfU9+FCgGJF/2ntSMxzq8hSjLzMux5Lar2+DaE6oZnBVIjMiNgXQ
	WwagVc17tI698UfdWYZpdH8VSLQseE6k531wNxscGlYAI8UGuSi2Myl9HHXhnwiMbfTx
	lNLqGmj5qFFfSXTt+pCxcT2K9jpeKe+TjsQgiYHgvnli5g3WmdWotLRmhkv2hlK4V1FC
	RGKw==
MIME-Version: 1.0
X-Received: by 10.25.81.17 with SMTP id f17mr5785629lfb.90.1449183228783; Thu,
	03 Dec 2015 14:53:48 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Thu, 3 Dec 2015 14:53:48 -0800 (PST)
In-Reply-To: <CAOsp8o9N0K0+ZgUcS7vdQE55NDaRW1F7a+cZsN3TTvA4LUW8hw@mail.gmail.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB1090CB712DB3C7DE23120AA3BB0F0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAOsp8o9N0K0+ZgUcS7vdQE55NDaRW1F7a+cZsN3TTvA4LUW8hw@mail.gmail.com>
Date: Thu, 3 Dec 2015 16:53:48 -0600
Message-ID: <CAOsp8o9EtJmV97pQRrB1Wt9hr4S1b0vbNKgL6bPTuuO-L25GWQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Thu, 03 Dec 2015 22:54:03 -0000
Content-Type: multipart/alternative; boundary=001a114062be90f6d00526064324

--001a114062be90f6d00526064324
Content-Type: text/plain; charset=UTF-8

Bryan,

I looked through the documentation and I'm a bit unclear on how to use
bin_package, and haven't been able to find a good example. Where do I
actually place my rootfs files/binaries to get copied to my image rootfs?
Under ${THISDIR}/${PN} like other recipe artifacts? How does it copy them
to ${S}? Or is this something I need to do?

Thanks,
Michael

On Tue, Dec 1, 2015 at 2:03 PM, Michael Habibi <mikehabibi@gmail.com> wrote:

> Thanks Bryan!
>
> On Tue, Dec 1, 2015 at 1:50 PM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:
>
>> Michael,
>>
>> > -----Original Message-----
>> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> > bounces@yoctoproject.org] On Behalf Of Michael Habibi
>> > Sent: Tuesday, December 01, 2015 10:26 AM
>> > To: yocto@yoctoproject.org
>> > Subject: [yocto] Best practice for files copied directly into sysroot?
>> >
>> > I am working on potentially migrating our distribution to Yocto (will
>> be a long,
>> > long process). We have an area of our filesystem where any file placed
>> will go
>> > directly into the rootfs of the target. This works well with our
>> product, as we
>> > have certain binaries and scripts that need to be copied directly, and
>> there's
>> > no other real step involved (no compilation, etc). Is there a best
>> practice or
>> > existing class that handles this? I saw mention of a binary/ directory
>> but I
>> > wasn't sure if that was for this or something else.
>> >
>> > Thanks,
>> > Michael
>>
>> I'm glad I decided to answer your question because I think I found an
>> easier way to do it than I have been doing this in the past.  If you want
>> to be able to update the files on your system at a later date, you will
>> want to make your own recipe which installs the binaries and scripts onto
>> the rootfs.  In general you create a recipe which does not have
>> do_configure or do_compile tasks.  There is a class that does this already
>> called "bin_package" that does this for you.  See the "Packaging Externally
>> Produced Binaries" section of the manual here:
>> http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#new-recipe-testing-examples.
>>  So if you include the line "inherit bin_package" and follow the
>> instructions in that section of the manual, it should install all the files
>> to the rootfs that are included in the recipe.
>>
>> Regards,
>> Bryan
>>
>>
>

--001a114062be90f6d00526064324
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bryan,<div><br>I looked through the documentation and I&#3=
9;m a bit unclear on how to use bin_package, and haven&#39;t been able to f=
ind a good example. Where do I actually place my rootfs files/binaries to g=
et copied to my image rootfs? Under ${THISDIR}/${PN} like other recipe arti=
facts? How does it copy them to ${S}? Or is this something I need to do?</d=
iv><div><br></div><div>Thanks,</div><div>Michael</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Tue, Dec 1, 2015 at 2:03 PM, =
Michael Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com=
" target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">Thanks Bryan!</div><div class=3D"HOE=
nZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Tue, Dec 1, 2015 at 1:50 PM, Bryan Evenson <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melink=
corp.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Michael,=
<br>
<div><div><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_bla=
nk">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-" ta=
rget=3D"_blank">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org" target=3D"_blank">bounces@=
yoctoproject.org</a>] On Behalf Of Michael Habibi<br>
&gt; Sent: Tuesday, December 01, 2015 10:26 AM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt; Subject: [yocto] Best practice for files copied directly into sysroot?=
<br>
&gt;<br>
&gt; I am working on potentially migrating our distribution to Yocto (will =
be a long,<br>
&gt; long process). We have an area of our filesystem where any file placed=
 will go<br>
&gt; directly into the rootfs of the target. This works well with our produ=
ct, as we<br>
&gt; have certain binaries and scripts that need to be copied directly, and=
 there&#39;s<br>
&gt; no other real step involved (no compilation, etc). Is there a best pra=
ctice or<br>
&gt; existing class that handles this? I saw mention of a binary/ directory=
 but I<br>
&gt; wasn&#39;t sure if that was for this or something else.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Michael<br>
<br>
</div></div>I&#39;m glad I decided to answer your question because I think =
I found an easier way to do it than I have been doing this in the past.=C2=
=A0 If you want to be able to update the files on your system at a later da=
te, you will want to make your own recipe which installs the binaries and s=
cripts onto the rootfs.=C2=A0 In general you create a recipe which does not=
 have do_configure or do_compile tasks.=C2=A0 There is a class that does th=
is already called &quot;bin_package&quot; that does this for you.=C2=A0 See=
 the &quot;Packaging Externally Produced Binaries&quot; section of the manu=
al here: <a href=3D"http://www.yoctoproject.org/docs/2.0/mega-manual/mega-m=
anual.html#new-recipe-testing-examples" rel=3D"noreferrer" target=3D"_blank=
">http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#new-rec=
ipe-testing-examples</a>.=C2=A0 =C2=A0So if you include the line &quot;inhe=
rit bin_package&quot; and follow the instructions in that section of the ma=
nual, it should install all the files to the rootfs that are included in th=
e recipe.<br>
<br>
Regards,<br>
Bryan<br>
<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a114062be90f6d00526064324--
