Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.49724.1585574265394545483
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Mar 2020 06:17:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@izotope.com header.s=google header.b=iQ/Jb20q;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: izotope.com, ip: 209.85.221.47, mailfrom: mcampbell@izotope.com)
Received: by mail-wr1-f47.google.com with SMTP id 31so21566506wrs.3
        for <yocto@lists.yoctoproject.org>; Mon, 30 Mar 2020 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=izotope.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dI1dcUW3FlO11ryn3/CzNEKvjJDkB+5Wmfrg48mEZdU=;
        b=iQ/Jb20qTE+qaZ93yHM6oivLeNXCYMCiaAWcPnBsd96ak5GY/ZLNDPADL+KlvnStat
         8SwcesJUgavjkdZaQDEwlZlPdTUUFHJTdghvrN9/Z/ChtuyeLW6bYgQoSQ1ceP/GfZvq
         hJx3FfNOR5v2SSHEIqu/fHPgkgxy85PDvS5pE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dI1dcUW3FlO11ryn3/CzNEKvjJDkB+5Wmfrg48mEZdU=;
        b=qgkYdhZT0wvMQ5XRse3v8rdgTc6Eu8YybFqNXjbXbCwbdmyBqpUSPJyxslINSIEXng
         reGxmkvQi7G47HEGYRcfEB4q1fwkRJHHUraaUQcO0oLujt1L6gbTwhmFrSgI5oAXc2GW
         nmm3Kys1XKi1iR01vOpCkHW/h++Falk6vIX5pIOEdy7tyM9mboqEkFIr7876Vrhp6i6F
         51BQb8WQ2tAffauawPu4DcHelMqQKRlSafwCV00dY+s48VMy4xEJpGuxaiWSTEJfvcME
         iZbOYg1Gl9tEZrYjc0mZG8VGZHe6amRrbLLtds2fkF1Yz5Qji3Si4xnhqO3avc5rewu1
         w4bA==
X-Gm-Message-State: ANhLgQ0cdQhdwWDQZ2HwYSF5U7oKXPvrfU6H8wLSW99NY/RIL/64GpPo
	yIexNfCiXk4gE9EP+zYG4FcVc2bDxyEtvdUpNmwGeA==
X-Google-Smtp-Source: ADFU+vuKD0wNUHAURO+lw7YK6akbUdapxh+WCU+pFKL9vi533cgNSRxSqP23TsBedGwb0tuPwPNsiWtrwF3D62Ws+W0=
X-Received: by 2002:a5d:46ca:: with SMTP id g10mr14459721wrs.290.1585574263351;
 Mon, 30 Mar 2020 06:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
 <alpine.LFD.2.21.2003260954290.12282@localhost.localdomain>
 <CAMDowVUVBc8Lm_TwRDBgYgQ1gf3tbNFjKnNvCBtLfJ3FRXXFQQ@mail.gmail.com> <VI1PR05MB428674CF3EB37F1577ADFBA0A8CF0@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB428674CF3EB37F1577ADFBA0A8CF0@VI1PR05MB4286.eurprd05.prod.outlook.com>
From: "Matt Campbell" <Mcampbell@izotope.com>
Date: Mon, 30 Mar 2020 09:17:32 -0400
Message-ID: <CAMDowVVpWGjYpFco3quYDDOgfqdTQhEbmaz0JPNx+5Q0h54EwA@mail.gmail.com>
Subject: Re: [yocto] Best way to mask bbappends based on Poky version to have a layer support multiple versions of Poky?
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bb817805a21246bc"

--000000000000bb817805a21246bc
Content-Type: text/plain; charset="UTF-8"

Thanks for the info. I think both of those will run into issues where the
bbappend won't apply to the original recipe as that is fully done by path
and file name and both of these methods mangle those. Please correct me if
I'm wrong as there might be some cheese down that tunnel for me.

I've been thinking more about this over the weekend and have rethought the
problem a bit. I think what I really want is to be able to conditionally
skip a bbappend in recipe using python rather than having to do this
centralized in the layer.conf with BBMASK. There are two reasons for this:

1) This puts the logic that skips the bbappend in the file itself which
makes it more obvious what is going on when browsing/maintaining meta-data.
The BBMASK method is centralized, but is hidden when you are just working
with the metadata.
2) This allows for arbitrary and more complex logic for skipping bbappends.

I'm not super familiar with the internals of bitbake, but I think what I
want is something similar to the bb.parse.SkipRecipe() exception. For
example

file: test_%.bbappend
python() {
    # Skip based on poky version
    if d.getVar("DISTRO_CODENAME") != 'zeus':
        raise bb.parse.SkipBbappend("This bbappend only supports Zeus.
Skipping this bbappend")

    # Skip based on package version
    if d.getVar("PV") != '1.0':
        raise bb.parse.SkipBbappend("This bbappend only supports version
1.0 of test. Skipping bbappend")
}

1) Does this seem like a good solution to the problem of dangling appends
in layers that want to support two versions of Poky?
2) Any thoughts on how to go about implementing this?

~Matt

On Thu, Mar 26, 2020 at 4:09 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> Hi,
>
> I'll get your point.
> Maybe this could be a solution to your problem
> https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-BBVERSIONS
> .
> Instead of having different bbappends have one and pick the right steps
> inside of the append.
>
> If that is not working for you, you could also fake the behavior of
> BBFILES_DYNAMIC with putting the bbappend into separate subfolder, which
> than are
> referenced by something like this
>
> BBFILES += "${LAYERDIR}/dynamic-recipes/${BB_VERSION}/*.bbappend"
>
> Regards
> Konrad
> On 26.03.20 20:56, Matt Campbell wrote:
>
> I didn't know about  BB_DANGLINGAPPENDS_WARNONLY. That would mask the
> problem, but doesn't feel like a great solution. Either way I do
> appreciate you sharing that.
>
> Further implementation and discussion with our team brought up another
> possible solution. We could wildcard all bbappends (_%.bbappend) and use
> some anonymous python inside our bbappend files that will error out if the
> package version isn't in a supported list. We could also easily roll this
> up into a bbclass to prevent the need to duplicate this everywhere.
>
> python () {
>     package_version = d.getVar("PV")
>     if  package_version is not in ['3.14", "3.15"]:
>         bb.error("This bbappend file isn't compatible with the version {}.
> You will need to add support to this bbappend for that
> version.".format(package_version))
> }
>
> This still seems more like we are fighting bitbake rather than working
> with it. Does anyone have any thoughts or suggestions on this?
>
> Other upstreams seem to maintain different branches for different Poky
> releases. That is a road we would rather avoid if possible. Our goal is to
> be able to have an extra CI build against the version of Poky under
> development so we can continuously fix the upgrade issues as they come up
> rather than as a landslide when we upgrade. Making a separate branch for
> this would mean we would need to merge all active development into each
> branch to get the benefits of a poky next canary build plan. That said, I'd
> love to hear about a solution that lets us have our cake and eat it too.
>
> ~Matt
>
> On Thu, Mar 26, 2020 at 9:55 AM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
>
>> On Thu, 26 Mar 2020, Matt Campbell wrote:
>>
>> > HI All,
>>
>> > We have a layer where we want to concurrently support two releases
>> > of Poky. There is an issue when we have bbappnds against recipes
>> > that have different versions in the two poky releases. for instance,
>> > imagine recipe foo that is version 1.0 in Zeus and 1.2 in Dunfell.
>> > If we had a bbappend in our layer `foo_1.0.bbappend` and tried to
>> > use our layer with Dunfell, bitbake will error out saying that
>> > `foo_1.0.bbappend` has no base recipe.
>>
>>   not sure if this really solves the underlying issue, but you can
>> always turn those errors into warnings with:
>>
>>   BB_DANGLINGAPPENDS_WARNONLY = "1"
>>
>> in your local.conf, although i'm still skeptical as to whether that's
>> really the problem you're trying to solve.
>>
>> rday
>>
>
>
> --
> Matthew Campbell
> Senior Embedded Systems Engineer
> mcampbell@izotope.com
>
> iZotope, Inc.
> www.izotope.com
>
> 
>
>

-- 
Matthew Campbell
Senior Embedded Systems Engineer
mcampbell@izotope.com

iZotope, Inc.
www.izotope.com

--000000000000bb817805a21246bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the info. I think both of those will run into i=
ssues where the bbappend won&#39;t apply to the original recipe as that is =
fully done by path and file name and both of these methods mangle those. Pl=
ease correct me if I&#39;m wrong as there might be some cheese down that tu=
nnel for me.<div><br></div><div>I&#39;ve been thinking more about this over=
 the weekend and have rethought the problem a bit. I think what I really wa=
nt is to be able to conditionally skip a bbappend in recipe using python ra=
ther than having to do this centralized in the layer.conf with BBMASK. Ther=
e are two reasons for this:</div><div><br></div><div>1) This puts the logic=
 that skips the bbappend in the file itself which makes it more obvious wha=
t is going on when browsing/maintaining meta-data. The BBMASK method=C2=A0i=
s centralized, but is hidden when you are just working with the metadata.</=
div><div>2) This allows for arbitrary=C2=A0and more complex logic for skipp=
ing bbappends.</div><div><br></div><div>I&#39;m not super familiar=C2=A0wit=
h the internals of bitbake, but I think what I want is something similar to=
 the bb.parse.SkipRecipe() exception. For example</div><div><br></div><div>=
file: test_%.bbappend</div><div>python() {</div><div>=C2=A0 =C2=A0 # Skip b=
ased on poky version</div><div>=C2=A0 =C2=A0 if d.getVar(&quot;DISTRO_CODEN=
AME&quot;) !=3D &#39;zeus&#39;:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise=
 bb.parse.SkipBbappend(&quot;This bbappend only supports Zeus. Skipping thi=
s bbappend&quot;)</div><div><br></div><div>=C2=A0 =C2=A0 # Skip based on pa=
ckage version</div><div><div>=C2=A0 =C2=A0 if d.getVar(&quot;PV&quot;) !=3D=
 &#39;1.0&#39;:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipBb=
append(&quot;This bbappend only supports version 1.0 of test. Skipping bbap=
pend&quot;)</div><div></div></div><div>}</div><div><br></div><div>1) Does t=
his seem like a good solution to the problem of dangling appends in layers =
that want to support two versions of Poky?<br></div><div>2) Any thoughts on=
 how to go about implementing this?</div><div><br></div><div>~Matt</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Mar 26, 2020 at 4:09 PM Konrad Weihmann &lt;<a href=3D"mailto:kweihman=
n@outlook.com" target=3D"_blank">kweihmann@outlook.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">

  
  <div>
    <p>Hi,</p>
    <p>I&#39;ll get your point.<br>
      Maybe this could be a solution to your problem
<a href=3D"https://www.yoctoproject.org/docs/current/bitbake-user-manual/b=
itbake-user-manual.html#var-BBVERSIONS" target=3D"_blank">https://www.yocto=
project.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#var-B=
BVERSIONS</a>.<br>
      Instead of having different bbappends have one and pick the right
      steps inside of the append.</p>
    <p>If that is not working for you, you could also fake the behavior
      of BBFILES_DYNAMIC with putting the bbappend into separate
      subfolder, which than are<br>
      referenced by something like this<br>
      <br>
      BBFILES +=3D &quot;${LAYERDIR}/dynamic-recipes/${BB_VERSION}/*.bbapp=
end&quot;</p>
    <p>Regards<br>
      Konrad<br>
    </p>
    <div>On 26.03.20 20:56, Matt Campbell wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">I didn&#39;t know about=C2=A0
        BB_DANGLINGAPPENDS_WARNONLY. That would mask the problem, but
        doesn&#39;t feel like a great solution. Either way I do
        appreciate=C2=A0you sharing that.
        <div><br>
        </div>
        <div>Further implementation=C2=A0and discussion with our team brou=
ght
          up another possible solution. We could wildcard all bbappends
          (_%.bbappend) and use some anonymous=C2=A0python inside our
          bbappend files that will error out if the package version
          isn&#39;t in a supported list. We could also easily=C2=A0roll th=
is up
          into a bbclass to prevent the need to duplicate this
          everywhere.</div>
        <div><br>
        </div>
        <div>python () {<br>
          =C2=A0 =C2=A0 package_version =3D d.getVar(&quot;PV&quot;) </div=
>
        <div>=C2=A0 =C2=A0 if=C2=A0 package_version is not in [&#39;3.14&q=
uot;, &quot;3.15&quot;]:</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.error(&quot;This bbappend file=
 isn&#39;t compatible with
          the version {}. You will need to add support to this bbappend
          for that version.&quot;.format(package_version))<br>
          }<br>
        </div>
        <div><br>
        </div>
        <div>This still seems more like we are fighting bitbake rather
          than working with it. Does anyone have any thoughts or
          suggestions on this?</div>
        <div><br>
        </div>
        <div>Other upstreams seem to maintain=C2=A0different branches for
          different Poky releases. That is a road we would rather avoid
          if possible. Our goal is to be able to have an extra CI build
          against the version of Poky under development so we can
          continuously=C2=A0fix the upgrade issues as they come up rather
          than as a landslide when we upgrade. Making a separate branch
          for this would mean we would need to merge all active
          development into each branch to get the benefits of a poky
          next canary build plan. That said, I&#39;d love to hear about a
          solution that lets us have our cake and eat it too.</div>
        <div><br>
        </div>
        <div>~Matt</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 26, 2020 at 9:55
          AM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca"=
 target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Thu, 26 Mar 2020, Matt Campbell wrote:<br>
          <br>
          &gt; HI All,<br>
          <br>
          &gt; We have a layer where we want to concurrently support two
          releases<br>
          &gt; of Poky. There is an issue when we have bbappnds against
          recipes<br>
          &gt; that have different versions in the two poky releases.
          for instance,<br>
          &gt; imagine recipe foo that is version 1.0 in Zeus and 1.2 in
          Dunfell.<br>
          &gt; If we had a bbappend in our layer `foo_1.0.bbappend` and
          tried to<br>
          &gt; use our layer with Dunfell, bitbake will error out saying
          that<br>
          &gt; `foo_1.0.bbappend` has no base recipe.<br>
          <br>
          =C2=A0 not sure if this really solves the underlying issue, but =
you
          can<br>
          always turn those errors into warnings with:<br>
          <br>
          =C2=A0 BB_DANGLINGAPPENDS_WARNONLY =3D &quot;1&quot;<br>
          <br>
          in your local.conf, although i&#39;m still skeptical as to wheth=
er
          that&#39;s<br>
          really the problem you&#39;re trying to solve.<br>
          <br>
          rday<br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr">
        <div dir=3D"ltr">Matthew Campbell
          <div>Senior Embedded Systems Engineer</div>
          <div><a href=3D"mailto:mcampbell@izotope.com" target=3D"_blank">=
mcampbell@izotope.com</a></div>
          <div><br>
          </div>
          <div>iZotope, Inc.</div>
          <div><a href=3D"http://www.izotope.com" target=3D"_blank">www.iz=
otope.com</a></div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>
</pre>
    </blockquote>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
"><div dir=3D"ltr">Matthew Campbell<div>Senior Embedded Systems Engineer</d=
iv><div><a href=3D"mailto:mcampbell@izotope.com" target=3D"_blank">mcampbel=
l@izotope.com</a></div><div><br></div><div>iZotope, Inc.</div><div><a href=
=3D"http://www.izotope.com" target=3D"_blank">www.izotope.com</a></div></d=
iv></div>

--000000000000bb817805a21246bc--
