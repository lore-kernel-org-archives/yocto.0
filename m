Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB783E00848; Wed,  1 Aug 2018 13:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A784E00708
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 13:59:43 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id s198-v6so37215494oih.11
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 13:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xZEm9eheUmAPOVnt7ubfQ+Mo5dTRvGqtVIEf0K7DZUs=;
	b=gEVY2+KxK0j0ggTscWcY1QgCAmYe7JPr5IGU+GOD93YFuN2C07Dmze6dAvQlMa4WLT
	A7X9feOxPIh2iC0zHoUdFZQzJTQN2hbQ+XoYcstQdUI9GGEdCD1ZxBDgqRd4zNx8jYX0
	aXTIrIzfhk8JSWV8sx+ZNonoqnHpq4mR2wO4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xZEm9eheUmAPOVnt7ubfQ+Mo5dTRvGqtVIEf0K7DZUs=;
	b=krQnAxXSBnMq+WOndoq+SUcvjIgkEh6M6ZRbHbrGB1wjN15Ii3ryW6YyLssSiK7dJ/
	8CfDpeqNS7sfew9xm7vDhIkAn672bodsiw02jDnojBHY4QSsG7cRFHBPuG041Ji8IJAB
	3ATbBLJU1TcsFPS/WaMi+nWRguhB70Q81ZtIxhs1W8n0ZqogPfhUDOiLQulpizg2i8gc
	bXX3d2M+0+AdFyitjsAm/yfyjRtuPEuUj/3AbwYE+rlr9xdnZCXQRnECKLzmXsrCgAFR
	Lk6bQUZeiiW1iptrHEJY+is9rQcr0BEePgEFadXaPFUW33/wvaE69ejuu4IdfbVkYaAm
	f/3g==
X-Gm-Message-State: AOUpUlHA/hEmBJxvdsrjtYDX6I62v+j1bXXe9bzTPLiCag/uqB0A5L8Q
	KzwDLrxVuEOd6x9QHOiVAKU++ppLnOEuhvHi6xDFDQ==
X-Google-Smtp-Source: AAOMgpeYIw7MoOab/vO5TylrynXoc5lf7iTCCs9Da/V603zXODSHTb8F3MIo6ui5M1LjKg/LUR07qljf2rcMJ5sTPRA=
X-Received: by 2002:aca:171a:: with SMTP id
	j26-v6mr5420395oii.277.1533157182315; 
	Wed, 01 Aug 2018 13:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
	<CA+chaQduoRG0cbuxLracsNdeJvAZX2CwgrhYe2Wmr0BMKaBATQ@mail.gmail.com>
	<DE98B1892D46BB468E30D103AE07E7BC253E769E@ORSMSX102.amr.corp.intel.com>
	<CA+chaQcPqae6YAan+HVcA2XssZ_4wqvrMYB5TjjQOTV-yPKO_g@mail.gmail.com>
In-Reply-To: <CA+chaQcPqae6YAan+HVcA2XssZ_4wqvrMYB5TjjQOTV-yPKO_g@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 1 Aug 2018 13:59:31 -0700
Message-ID: <CADfgfoaVXfwLYPxAVONGn2Yu71F2aTbh3vtD-X+gBq=CbgDVmg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, "Brindle,
	Amanda R" <amanda.r.brindle@intel.com>
Subject: Re: Error Report Tool Purge
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
X-List-Received-Date: Wed, 01 Aug 2018 20:59:44 -0000
Content-Type: multipart/alternative; boundary="0000000000003cb60f057265f9e0"

--0000000000003cb60f057265f9e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Currently the database is 26GB. I'm going to start purging un-visited
reports older than 180 days today. I see some good suggestions in this
thread. Khem, would you open an enhancement request describing the counts
you are interested in preserving?

On Thu, Jul 19, 2018 at 11:08 PM Martin Jansa <martin.jansa@gmail.com>
wrote:

> OK, so it's only visited links, not linked from ML or wiki or whatever,
> right?
>
> How huge the database is? I've checked our internal instance and on
> relatively slow VM we have:
> 47 472 724 Post_buildstatstask
> 2 715 091 Post_build
> 559 655 Post_buildfailure
>
> we use postgresql, the db currently has 20GB, which is quite big for VM
> with 10GB RAM and 12 E5-2699 cores so it's slow as well, but not terribly
> slow, individual builds or build-failures are really fast, there are some
> bad queries in django which are terrible, but we're not using those usual=
ly.
>
> Cheers,
>
>
> On Thu, Jul 19, 2018 at 9:01 PM Brindle, Amanda R <
> amanda.r.brindle@intel.com> wrote:
>
>> Every time a specific report is visited (with the end of the URL being
>> /Errors/Details/<id>), we are tracking if the referrer is another websit=
e,
>> the reporting tool itself, or unknown. If the referrer is another websit=
e
>> or unknown, then we won=E2=80=99t delete it.
>>
>>
>>
>> The purge script does not look at links to whole builds, so as it is
>> right now, those would get deleted. If it=E2=80=99s common to link to wh=
ole builds,
>> though, I can add something to the script to save reports from a visited=
 or
>> linked build.
>>
>>
>>
>> -Amanda Brindle
>>
>>
>>
>> *From:* Martin Jansa [mailto:martin.jansa@gmail.com]
>> *Sent:* Thursday, July 19, 2018 11:38 AM
>> *To:* Brindle, Amanda R <amanda.r.brindle@intel.com>
>> *Cc:* Yocto Project <yocto@yoctoproject.org>
>> *Subject:* Re: [yocto] Error Report Tool Purge
>>
>>
>>
>> I'm just curious, how are you tracking which reports were viewed or
>> linked to (and linked from where)? I often use a link to
>> http://errors.yoctoproject.org in the mailing list or the recipes/commit
>> message instead of copy pasting whole build error, because it already
>> shortens the build paths and shows useful additional information about t=
he
>> error.
>>
>>
>>
>> The links to whole builds on http://errors.yoctoproject.org were also
>> often linked from "bitbake world status" e-mails and wiki like:
>>
>> https://www.openembedded.org/wiki/Bitbake_World_Status_Rocko
>>
>> and on many of them nobody clicked yet - should I expect that these will
>> mostly get broken?
>>
>>
>>
>> Regards
>>
>>
>>
>>
>>
>>
>>
>> On Thu, Jul 19, 2018 at 8:30 PM Brindle, Amanda R <
>> amanda.r.brindle@intel.com> wrote:
>>
>> Hello,
>>
>>
>>
>> The Error Reporting Tool=E2=80=99s database (
>> http://errors.yoctoproject.org/Errors/Latest/Autobuilder/)  has grown to
>> a huge size, and this is affecting the performance of the application. W=
e
>> are planning to run a purge to get rid of reports that we don=E2=80=99t =
need. We
>> will keep reports from the last thirty days, as well as reports that hav=
e
>> been viewed or linked to. If you have a specific report that you don=E2=
=80=99t want
>> purged, please let me know by the end of the month.
>>
>>
>>
>> Amanda Brindle, Software Engineer
>>
>> 503-264-3970
>>
>> amanda.r.brindle@intel.com
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003cb60f057265f9e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Currently the database is 26GB. I&#39;m going to start pur=
ging un-visited reports older than 180 days today. I see some good suggesti=
ons in this thread. Khem, would you open an enhancement request describing =
the counts you are interested in preserving?=C2=A0</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Thu, Jul 19, 2018 at 11:08 PM Martin Jansa =
&lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">OK, so it=
&#39;s only visited links, not linked from ML or wiki or whatever, right?<d=
iv><br></div><div>How huge the database is? I&#39;ve checked our internal i=
nstance and on relatively slow VM we have:</div><div><span style=3D"font-si=
ze:small;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">47 472 724=C2=A0Post=
_buildstatstask</span><br></div><div>2 715 091=C2=A0Post_build<br></div><di=
v>559 655=C2=A0Post_buildfailure<br></div><div><br></div><div>we use postgr=
esql, the db currently has 20GB, which is quite big for VM with 10GB RAM an=
d 12 E5-2699=C2=A0cores so it&#39;s slow as well, but not terribly slow, in=
dividual builds or build-failures are really fast, there are some bad queri=
es in django which are terrible, but we&#39;re not using those usually.</di=
v><div><br></div><div>Cheers,</div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Thu, Jul 19, 2018 at 9:01 PM Brindle, Amand=
a R &lt;<a href=3D"mailto:amanda.r.brindle@intel.com" target=3D"_blank">ama=
nda.r.brindle@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-2704937825272715670m_-6203912255561019796WordSection1">
<p class=3D"MsoNormal"><a name=3D"m_-2704937825272715670_m_-620391225556101=
9796__MailEndCompose"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1f497d">Every time a specific report is visite=
d (with the end of the URL being /Errors/Details/&lt;id&gt;), we are tracki=
ng if the referrer is another
 website, the reporting tool itself, or unknown. If the referrer is another=
 website or unknown, then we won=E2=80=99t delete it.
<u></u><u></u></span></a></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">The purge script does not look at lin=
ks to whole builds, so as it is right now, those would get deleted. If it=
=E2=80=99s common to link to whole builds, though, I can
 add something to the script to save reports from a visited or linked build=
. <u></u>
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">-Amanda Brindle<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><a name=3D"m_-2704937825272715670_m_-620391225556101=
9796______replyseparator"></a><b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Martin Jansa [mailto:<a=
 href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmai=
l.com</a>]
<br>
<b>Sent:</b> Thursday, July 19, 2018 11:38 AM<br>
<b>To:</b> Brindle, Amanda R &lt;<a href=3D"mailto:amanda.r.brindle@intel.c=
om" target=3D"_blank">amanda.r.brindle@intel.com</a>&gt;<br>
<b>Cc:</b> Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Error Report Tool Purge<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">I&#39;m just curious, how are you tracking which rep=
orts were viewed or linked to (and linked from where)? I often use a link t=
o
<a href=3D"http://errors.yoctoproject.org" target=3D"_blank">http://errors.=
yoctoproject.org</a> in the mailing list or the recipes/commit message inst=
ead of copy pasting whole build error, because it already shortens the buil=
d paths and shows useful additional information about
 the error.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The links to whole builds on=C2=A0<a href=3D"http://=
errors.yoctoproject.org" target=3D"_blank">http://errors.yoctoproject.org</=
a>=C2=A0were also often linked from &quot;bitbake world status&quot; e-mail=
s and wiki like:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><a href=3D"https://www.openembedded.org/wiki/Bitbake=
_World_Status_Rocko" target=3D"_blank">https://www.openembedded.org/wiki/Bi=
tbake_World_Status_Rocko</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">and on many of them nobody clicked yet - should I ex=
pect that these will mostly get broken?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jul 19, 2018 at 8:30 PM Brindle, Amanda R &l=
t;<a href=3D"mailto:amanda.r.brindle@intel.com" target=3D"_blank">amanda.r.=
brindle@intel.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The Error Reporting Tool=E2=80=99s database (<a href=
=3D"http://errors.yoctoproject.org/Errors/Latest/Autobuilder/" target=3D"_b=
lank">http://errors.yoctoproject.org/Errors/Latest/Autobuilder/</a>)
 =C2=A0has grown to a huge size, and this is affecting the performance of t=
he application. We are planning to run a purge to get rid of reports that w=
e don=E2=80=99t need. We will keep reports from the last thirty days, as we=
ll as reports that have been viewed or linked
 to. If you have a specific report that you don=E2=80=99t want purged, plea=
se let me know by the end of the month.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">Amanda Brindle, Sof=
tware Engineer</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">503-264-3970
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt"><a href=3D"mailto:a=
manda.r.brindle@intel.com" target=3D"_blank">amanda.r.brindle@intel.com</a>=
</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000003cb60f057265f9e0--
