Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.4544.1585252624749792098
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 12:57:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@izotope.com header.s=google header.b=UfiZdCrj;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: izotope.com, ip: 209.85.128.65, mailfrom: mcampbell@izotope.com)
Received: by mail-wm1-f65.google.com with SMTP id g62so8865723wme.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2020 12:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=izotope.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gJlKLtvJa9iXK4P8+ppBfbaDZGZhTbf+3GXTf4A+xtM=;
        b=UfiZdCrj2ME9YCC7eKvRpkkKQ8MSvvdE1ZxZV+B4OPxOhi5mzDK285Q6yVKHEb0Ckp
         PcwtZS9bJfhP4qILLku4w26Ehz1nZhJZ1MVMkdfdZ62r6/ApWz7B7kHz9/PRT26QDozH
         4xRwCVdiuHafbpIRJ/rhjggobBa452wS2WDJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gJlKLtvJa9iXK4P8+ppBfbaDZGZhTbf+3GXTf4A+xtM=;
        b=Mk009QOh/Y+7+k0svkXz48w9zvmEX/0Z/tV3Gy1yhiu0ONsxRO2xTsPZHnVythgxx3
         AU7L3yfidRzLfFk7ig2s24hcXGk9lqhL6BcIlLTNaGpTx1u/ffIZrg+p016IUgqiRLth
         MOt7Lyuf4DpCjpStCSMvSpckDIfoV6vQ1hLF5yqgR+S8vi01J5XYiihcFPBrZJJ61Ulv
         DkQLAuCszIUhkyrV532F2HZTphJ5pByZZEa3d0knNzOweam803pHYMgKSmdSRuWsds6Y
         HnfbTkp8AVMjz4M4Gopdm2dHR6sM+dCQtnm8bDJMFBhG996wdD0ykQVQLBSUtnsKYmez
         cupw==
X-Gm-Message-State: ANhLgQ1cgyeN7iiED68fYV/yngMneZLGNniVexa+9t04dXk0G8fPPQfB
	FS1Bmmxn6Y4PDff5PTtIO36UYNE0+zoQTKO5vZwVOg==
X-Google-Smtp-Source: ADFU+vuNPSYm3NveSaaUI8HXYwfZ8K5wab4R8ANmrwH19iu/YKja9Su8vwG9BTLYeM2KvvAO1j5lnpzIiRTSThRlBPs=
X-Received: by 2002:a7b:c117:: with SMTP id w23mr1614544wmi.26.1585252622318;
 Thu, 26 Mar 2020 12:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
 <alpine.LFD.2.21.2003260954290.12282@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2003260954290.12282@localhost.localdomain>
From: "Matt Campbell" <Mcampbell@izotope.com>
Date: Thu, 26 Mar 2020 15:56:51 -0400
Message-ID: <CAMDowVUVBc8Lm_TwRDBgYgQ1gf3tbNFjKnNvCBtLfJ3FRXXFQQ@mail.gmail.com>
Subject: Re: [yocto] Best way to mask bbappends based on Poky version to have a layer support multiple versions of Poky?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org, Huzefa Mandviwala <hmandviwala@izotope.com>
Content-Type: multipart/alternative; boundary="0000000000006edac905a1c763b5"

--0000000000006edac905a1c763b5
Content-Type: text/plain; charset="UTF-8"

I didn't know about  BB_DANGLINGAPPENDS_WARNONLY. That would mask the
problem, but doesn't feel like a great solution. Either way I do
appreciate you sharing that.

Further implementation and discussion with our team brought up another
possible solution. We could wildcard all bbappends (_%.bbappend) and use
some anonymous python inside our bbappend files that will error out if the
package version isn't in a supported list. We could also easily roll this
up into a bbclass to prevent the need to duplicate this everywhere.

python () {
    package_version = d.getVar("PV")
    if  package_version is not in ['3.14", "3.15"]:
        bb.error("This bbappend file isn't compatible with the version {}.
You will need to add support to this bbappend for that
version.".format(package_version))
}

This still seems more like we are fighting bitbake rather than working with
it. Does anyone have any thoughts or suggestions on this?

Other upstreams seem to maintain different branches for different Poky
releases. That is a road we would rather avoid if possible. Our goal is to
be able to have an extra CI build against the version of Poky under
development so we can continuously fix the upgrade issues as they come up
rather than as a landslide when we upgrade. Making a separate branch for
this would mean we would need to merge all active development into each
branch to get the benefits of a poky next canary build plan. That said, I'd
love to hear about a solution that lets us have our cake and eat it too.

~Matt

On Thu, Mar 26, 2020 at 9:55 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Thu, 26 Mar 2020, Matt Campbell wrote:
>
> > HI All,
>
> > We have a layer where we want to concurrently support two releases
> > of Poky. There is an issue when we have bbappnds against recipes
> > that have different versions in the two poky releases. for instance,
> > imagine recipe foo that is version 1.0 in Zeus and 1.2 in Dunfell.
> > If we had a bbappend in our layer `foo_1.0.bbappend` and tried to
> > use our layer with Dunfell, bitbake will error out saying that
> > `foo_1.0.bbappend` has no base recipe.
>
>   not sure if this really solves the underlying issue, but you can
> always turn those errors into warnings with:
>
>   BB_DANGLINGAPPENDS_WARNONLY = "1"
>
> in your local.conf, although i'm still skeptical as to whether that's
> really the problem you're trying to solve.
>
> rday
>


-- 
Matthew Campbell
Senior Embedded Systems Engineer
mcampbell@izotope.com

iZotope, Inc.
www.izotope.com

--0000000000006edac905a1c763b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I didn&#39;t know about=C2=A0

BB_DANGLINGAPPENDS_WARNONLY. That would mask the problem, but doesn&#39;t f=
eel like a great solution. Either way I do appreciate=C2=A0you sharing that=
.<div><br></div><div>Further implementation=C2=A0and discussion with our te=
am brought up another possible solution. We could wildcard all bbappends (_=
%.bbappend) and use some anonymous=C2=A0python inside our bbappend files th=
at will error out if the package version isn&#39;t in a supported list. We =
could also easily=C2=A0roll this up into a bbclass to prevent the need to d=
uplicate this everywhere.</div><div><br></div><div>python () {<br>=C2=A0 =
=C2=A0 package_version =3D d.getVar(&quot;PV&quot;)=20

</div><div>=C2=A0 =C2=A0 if=C2=A0 package_version is not in [&#39;3.14&quot=
;, &quot;3.15&quot;]:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.error(&quot;=
This bbappend file isn&#39;t compatible with the version {}. You will need =
to add support to this bbappend for that version.&quot;.format(package_vers=
ion))<br>}<br></div><div><br></div><div>This still seems more like we are f=
ighting bitbake rather than working with it. Does anyone have any thoughts =
or suggestions on this?</div><div><br></div><div>Other upstreams seem to ma=
intain=C2=A0different branches for different Poky releases. That is a road =
we would rather avoid if possible. Our goal is to be able to have an extra =
CI build against the version of Poky under development so we can continuous=
ly=C2=A0fix the upgrade issues as they come up rather than as a landslide w=
hen we upgrade. Making a separate branch for this would mean we would need =
to merge all active development into each branch to get the benefits of a p=
oky next canary build plan. That said, I&#39;d love to hear about a solutio=
n that lets us have our cake and eat it too.</div><div><br></div><div>~Matt=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Mar 26, 2020 at 9:55 AM Robert P. J. Day &lt;<a href=3D"mailt=
o:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On Thu, 26 Mar 2020, Matt Cam=
pbell wrote:<br>
<br>
&gt; HI All,<br>
<br>
&gt; We have a layer where we want to concurrently support two releases<br>
&gt; of Poky. There is an issue when we have bbappnds against recipes<br>
&gt; that have different versions in the two poky releases. for instance,<b=
r>
&gt; imagine recipe foo that is version 1.0 in Zeus and 1.2 in Dunfell.<br>
&gt; If we had a bbappend in our layer `foo_1.0.bbappend` and tried to<br>
&gt; use our layer with Dunfell, bitbake will error out saying that<br>
&gt; `foo_1.0.bbappend` has no base recipe.<br>
<br>
=C2=A0 not sure if this really solves the underlying issue, but you can<br>
always turn those errors into warnings with:<br>
<br>
=C2=A0 BB_DANGLINGAPPENDS_WARNONLY =3D &quot;1&quot;<br>
<br>
in your local.conf, although i&#39;m still skeptical as to whether that&#39=
;s<br>
really the problem you&#39;re trying to solve.<br>
<br>
rday<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Matthew Campbell<div>Senior Emb=
edded Systems Engineer</div><div><a href=3D"mailto:mcampbell@izotope.com" t=
arget=3D"_blank">mcampbell@izotope.com</a></div><div><br></div><div>iZotope=
, Inc.</div><div><a href=3D"http://www.izotope.com" target=3D"_blank">www.i=
zotope.com</a></div></div></div>

--0000000000006edac905a1c763b5--
