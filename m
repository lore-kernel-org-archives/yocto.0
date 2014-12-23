Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D1BDE008A7; Tue, 23 Dec 2014 07:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCCDE00872
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 07:20:43 -0800 (PST)
Received: by mail-ob0-f172.google.com with SMTP id va8so25642867obc.3
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 07:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UpBi61GF2X47S/1wIVJsAVWlovoIo4Kpv5DWeNNKWMY=;
	b=I/34nnFyzZSYA565xmLULz+dg69gYwQ9gGPCVMnDk1TVanjWPhZTvBhocS+VgZnYSD
	dX1yMtUb7ZaYmCTUVVwJxR9y37wig0zNXS6EO+5sMiH8DWwTV2Ze/h1E1ciSac+vsviC
	sQa6NUMgSIjFMn5mHTLYOPsaPXsiMSrvQbz2vmF86DABVRNYdkmE+fpsPW2WfbS1DuGj
	H4aY5n/o4U/XqTPin13y4pyrg8yx2RplsLGNlwSTii3IDSqi5LLVQ7+HNP4bib4TxVj6
	6exXj94xI4YPK4dJpbWBt4sgcCrlKXJZ6hV24pROcc2rLE3KGhjbQvWSc2s8SUt61XIu
	Vl4Q==
X-Gm-Message-State: ALoCoQnp9ecdo78jfUVEE/ZYgXWLabEI34W6liqvCaqzpcRAR/NaI8MJyGtILN6iBqtzUVsbATIu
X-Received: by 10.60.125.37 with SMTP id mn5mr3504914oeb.45.1419348042776;
	Tue, 23 Dec 2014 07:20:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.62.109 with HTTP; Tue, 23 Dec 2014 07:20:22 -0800 (PST)
In-Reply-To: <CAJ2CSBsau7yx2LCnw4nOu5c0vTRayJgZcfNEiMXKqm6U59anEg@mail.gmail.com>
References: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
	<CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
	<CAJ2CSBsau7yx2LCnw4nOu5c0vTRayJgZcfNEiMXKqm6U59anEg@mail.gmail.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Tue, 23 Dec 2014 15:20:22 +0000
Message-ID: <CAJ2CSBsA1D0aDWpmHgjkhwYxkY8G-FVY61b9Z-kuRoy9h6eaGA@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Tue, 23 Dec 2014 15:20:56 -0000
Content-Type: multipart/alternative; boundary=047d7b343dfee71890050ae3b738

--047d7b343dfee71890050ae3b738
Content-Type: text/plain; charset=UTF-8

Hi Beth,

The bitbake patchset was merged last week, and I've made the requested
changes to the autobuilder patchset.

Can you please review and pull *poky-contrib:
adamian/autobuilder-enable-toaster *at your convenience ?

Thanks,
Alex

On Wed, Dec 10, 2014 at 11:13 AM, Damian, Alexandru <
alexandru.damian@intel.com> wrote:

> Hi,
>
> Thanks for the quick reply -
>
> yes, Toaster needs buildhistory; it also needs the "toaster" bbclass in
> the INHERIT list.
>
> I'll make the changes and re-submit.
>
> Cheers,
> Alex
>
> On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth <
> elizabeth.flanagan@intel.com> wrote:
>
>> A few initial comments.
>>
>> TOASTER_UPLOADURL needs to be added to
>> config/autobuilder.conf.example. It would also be nice if it was added
>> to docs. Please set it to a localhost URL and comment it out for the
>> time being.
>>
>> Also, can we make it TOASTER_UPLOAD_URL. It matches my naming
>> convention for config strings a bit closer.
>>
>> If toaster needs buildhistory, I'm going to have to do some work on
>> getting buildhistory to setup automatically on an autobuilder install
>> (or at least document how to do it).
>>
>> -b
>>
>> On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru
>> <alexandru.damian@intel.com> wrote:
>> > Hello,
>> >
>> > I'm sending a patchset to enable Toaster logging for the autobuilder -
>> can
>> > you please review and comment ?
>> >
>> > I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)
>> > Bitbake that adds two toaster-on-autobuilder related features:
>> > 1. build event logging flag (-w) will write an UI event log file
>> > 2. toaster end point that receives a log file over a HTTP POST request
>> and
>> > loads the data in the toaster database
>> >
>> > Based on this approach, I've created an autobuilder patchset that
>> enables 1.
>> > at all times, and 2. uploads the data to a Toaster server if such
>> server is
>> > specified in the build configuration
>> >
>> > Can you please review:
>> >
>> > poky-contrib: adamian/autobuilder-enable-toaster
>> >
>> >
>> > Thanks,
>> > Alex
>> >
>> > --
>> > Alex Damian
>> > Yocto Project
>> > SSG / OTC
>> >
>> > ---------------------------------------------------------------------
>> > Intel Corporation (UK) Limited
>> > Registered No. 1134945 (England)
>> > Registered Office: Pipers Way, Swindon SN3 1RJ
>> > VAT No: 860 2173 47
>> >
>> > This e-mail and any attachments may contain confidential material for
>> > the sole use of the intended recipient(s). Any review or distribution
>> > by others is strictly prohibited. If you are not the intended
>> > recipient, please contact the sender and delete all copies.
>>
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>>
>
>
>
> --
> Alex Damian
> Yocto Project
> SSG / OTC
>



-- 
Alex Damian
Yocto Project
SSG / OTC

--047d7b343dfee71890050ae3b738
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi Beth,<br><br></div><div class=3D"gmail_default" style=3D"font=
-family:tahoma,sans-serif">The bitbake patchset was merged last week, and I=
&#39;ve made the requested changes to the autobuilder patchset.<br><br>Can =
you please review and pull <b>poky-contrib: adamian/autobuilder-enable-toas=
ter </b>at your convenience ?<br><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:tahoma,sans-serif">Thanks,<br></div><div class=3D"gmail_d=
efault" style=3D"font-family:tahoma,sans-serif">Alex<br></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 10, 2014 at =
11:13 AM, Damian, Alexandru <span dir=3D"ltr">&lt;<a href=3D"mailto:alexand=
ru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Hi,<br><br>Thank=
s for the quick reply -<br><br>yes, Toaster needs buildhistory; it also nee=
ds the &quot;toaster&quot; bbclass in the INHERIT list.<br><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">I&#39;ll mak=
e the changes and re-submit.<br></div><div class=3D"gmail_default" style=3D=
"font-family:tahoma,sans-serif"><br>Cheers,<br>Alex<br></div></div><div cla=
ss=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth <span =
dir=3D"ltr">&lt;<a href=3D"mailto:elizabeth.flanagan@intel.com" target=3D"_=
blank">elizabeth.flanagan@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">A few initial comments.<br>
<br>
TOASTER_UPLOADURL needs to be added to<br>
config/autobuilder.conf.example. It would also be nice if it was added<br>
to docs. Please set it to a localhost URL and comment it out for the<br>
time being.<br>
<br>
Also, can we make it TOASTER_UPLOAD_URL. It matches my naming<br>
convention for config strings a bit closer.<br>
<br>
If toaster needs buildhistory, I&#39;m going to have to do some work on<br>
getting buildhistory to setup automatically on an autobuilder install<br>
(or at least document how to do it).<br>
<br>
-b<br>
<div><div><br>
On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru<br>
&lt;<a href=3D"mailto:alexandru.damian@intel.com" target=3D"_blank">alexand=
ru.damian@intel.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m sending a patchset to enable Toaster logging for the autobuild=
er - can<br>
&gt; you please review and comment ?<br>
&gt;<br>
&gt; I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)<=
br>
&gt; Bitbake that adds two toaster-on-autobuilder related features:<br>
&gt; 1. build event logging flag (-w) will write an UI event log file<br>
&gt; 2. toaster end point that receives a log file over a HTTP POST request=
 and<br>
&gt; loads the data in the toaster database<br>
&gt;<br>
&gt; Based on this approach, I&#39;ve created an autobuilder patchset that =
enables 1.<br>
&gt; at all times, and 2. uploads the data to a Toaster server if such serv=
er is<br>
&gt; specified in the build configuration<br>
&gt;<br>
&gt; Can you please review:<br>
&gt;<br>
&gt; poky-contrib: adamian/autobuilder-enable-toaster<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Alex<br>
&gt;<br>
&gt; --<br>
&gt; Alex Damian<br>
&gt; Yocto Project<br>
&gt; SSG / OTC<br>
&gt;<br>
</div></div>&gt; ----------------------------------------------------------=
-----------<br>
&gt; Intel Corporation (UK) Limited<br>
&gt; Registered No. 1134945 (England)<br>
&gt; Registered Office: Pipers Way, Swindon SN3 1RJ<br>
&gt; VAT No: 860 2173 47<br>
&gt;<br>
&gt; This e-mail and any attachments may contain confidential material for<=
br>
&gt; the sole use of the intended recipient(s). Any review or distribution<=
br>
&gt; by others is strictly prohibited. If you are not the intended<br>
&gt; recipient, please contact the sender and delete all copies.<br>
<span><font color=3D"#888888"><br>
<br>
<br>
--<br>
Elizabeth Flanagan<br>
Yocto Project<br>
Build and Release<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div=
 dir=3D"ltr">Alex Damian<div>Yocto Project<br></div><div>SSG / OTC=C2=A0</d=
iv></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br></di=
v><div>SSG / OTC=C2=A0</div></div></div>
</div>

--047d7b343dfee71890050ae3b738--
