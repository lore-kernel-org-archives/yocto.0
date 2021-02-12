Received: from hmr112.pwrz.at (hmr112.pwrz.at [194.30.191.129])
 by mx.groups.io with SMTP id smtpd.web10.1919.1613125550265484790
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 02:25:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@voxel.at header.s=default header.b=dp91x+Xb;
 spf=pass (domain: voxel.at, ip: 194.30.191.129, mailfrom: simon@voxel.at)
Received: from srv345.pwrz.at (unknown [10.10.30.15])
	by hmr112.pwrz.at (Postfix) with ESMTP id 3FEC0402EB;
	Fri, 12 Feb 2021 11:25:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by srv345.pwrz.at (Postfix) with ESMTP id E4FDCCC118;
	Fri, 12 Feb 2021 11:25:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at pwrz.at
Received: from srv345.pwrz.at ([127.0.0.1])
	by localhost (srv345.pwrz.at [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SsfiOIpv_a9q; Fri, 12 Feb 2021 11:25:42 +0100 (CET)
Received: from srv371.pwrz.at (srv371.pwrz.at [80.122.189.136])
	by srv345.pwrz.at (Postfix) with ESMTP id 5BAA7D13A4;
	Fri, 12 Feb 2021 11:25:35 +0100 (CET)
Received: from grau.fritz.box (unknown [80.243.174.92])
	by srv371.pwrz.at (Postfix) with ESMTPSA id 933762C0F48;
	Fri, 12 Feb 2021 11:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voxel.at; s=default;
	t=1613125571; bh=puuhFCKBESh8aoPDjWRbQQMb/4Ch9TEIJ+x192UutZU=;
	l=12788;
	h=Subject:To:Cc:References:From:Organization:Message-ID:Date:
	 User-Agent:MIME-Version:In-Reply-To:Content-Type:Content-Language:
	 X-PPP-Message-ID:X-PPP-Vhost;
	b=dp91x+XbOcCKyJmQcHOKw3HoxVCN1c6YwG3HhN0kkrDEYXqzQI6beNZ6SNSxDQZwl
	 6476rHkHjQzPMSd2u2VPcenw6J+atp24WbOU+Wt1RlucHftFfMkGMXIaxs07LlKndp
	 cdVLSQ7UJNEt3v3rdae1wckzIQKtrkdVm1tq5hKY=
Subject: Re: [yocto] Dunfell, nodejs and typescript - short experience report
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <c8592b7e-a498-e413-1527-f5f6fe4dad0c@voxel.at>
 <CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=Q@mail.gmail.com>
From: "Simon Vogl" <simon@voxel.at>
Organization: VoXel Interaction Design
Message-ID: <dfb4f6fa-18d2-0be0-94a6-043b0a34ec2a@voxel.at>
Date: Fri, 12 Feb 2021 11:25:34 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=Q@mail.gmail.com>
X-PPP-Message-ID: <20210212102611.8562.4064@srv371.pwrz.at>
X-PPP-Vhost: voxel.at
Content-Type: multipart/alternative;
 boundary="------------51AC1783C00A8D41FF217F29"
Content-Language: it

--------------51AC1783C00A8D41FF217F29
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,


Am 12.02.21 um 11:12 schrieb Josef Holzmayr:
> Howdy!
>
> Thanks for sharing, a few comments inline.
>
> Am Fr., 12. Feb. 2021 um 11:03 Uhr schrieb Simon Vogl <simon@voxel.at>:
>> I have some remarks and questions about the npm/nodejs support in dunfe=
ll that I wanted to share. We are creating nodejs-based IoT edge solutions =
and upgrading our build environments to Dunfell one by one. In the course o=
f this, we are switching to the new npm-implementation and found a few smal=
l issues.
>>
>> Firstly, the do_configure() task takes quite some time to complete. Aft=
er a quick analysis, I saw that most of the time is being spent in creating=
 the npmrc files while packing the dependent packages. I wrote a small work=
around to directly create the file instead of calling 'npm config', which r=
esults in a 3x-4x speedup:
>>
>> Signed-off-by: Simon Vogl <simon@voxel.at>
>> ---
>>   lib/bb/fetch2/npm.py | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/lib/bb/fetch2/npm.py b/lib/bb/fetch2/npm.py
>> index 4789850..2720d87 100644
>> --- a/lib/bb/fetch2/npm.py
>> +++ b/lib/bb/fetch2/npm.py
>> @@ -97,13 +97,18 @@ class NpmEnvironment(object):
>>                   cmd =3D "NPM_CONFIG_GLOBALCONFIG=3D%s " % cfgfile + c=
md
>>                   return runfetchcmd(cmd, d, workdir=3Dworkdir)
>>
>> +            cfg =3D open(cfgfile, "a")
>>               if self.configs:
>>                   for key, value in self.configs:
>> -                    _run("npm config set %s %s" % (key, shlex.quote(va=
lue)))
>> +                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
>> +                    #_run("npm config set %s %s" % (key, shlex.quote(v=
alue)))
>>
>>               if configs:
>>                   for key, value in configs:
>> -                    _run("npm config set %s %s" % (key, shlex.quote(va=
lue)))
>> +                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
>> +                    # _run("npm config set %s %s" % (key, shlex.quote(=
value)))
>> +
>> +            cfg.close()
>>
>>               if args:
>>                   for key, value in args:
>> --
>> 2.7.4
>>
>> Are there any side effects that I did not stumble over yet? And I'd LOV=
E to have these calls running in a thread-pool for better performance...
> The main side effect is that you're effectively patching poky, which
> is bad for maintenance.
I know, that's why I'm asking in the first place. But performance here=20
is really really improvable.
>> Secondly, our projects are based on typescript, so a native compile ste=
p is necessary to create a compiled version for packing. We experimented wi=
th a separate release branch to check in compiled versions, but this is not=
 easy to handle. I played around with npm.bbclass and found a way to extend=
 configure (!) with a call to our build script before packaging:
>>
>> diff --git a/meta/classes/npm.bbclass b/meta/classes/npm.bbclass
>> index 068032a1e5..31535098cf 100644
>> --- a/meta/classes/npm.bbclass
>> +++ b/meta/classes/npm.bbclass
>> @@ -170,6 +170,11 @@ python npm_do_configure() {
>>
>>       # Configure the main package
>>       with tempfile.TemporaryDirectory() as tmpdir:
>> +        # install all (native) build dependencies, overrides npm cache=
:
>> +        ret =3D os.system("npm i")
>> +        # run build step:
>> +        env.run("npm run build", args=3D[], workdir=3Dd.getVar("S"))
>> +
>>           tarball =3D npm_pack(env, d.getVar("S"), tmpdir)
>>           npm_unpack(tarball, d.getVar("NPM_PACKAGE"), d)
>>
>> As we have plain JS packages as well, I put the modified configure() in=
 a subclass and this works for us, but it does not look like a clean soluti=
on to me. How do you other IoT'ers address this situation?
> Again, patching poky is a bad idea. Creating custom bbclasses is much
> neater: you could create a base include, and pull that together with
> npm.bbclass into two final bbclasses of yours, like npm-js-voxel and
> npm-ts-voxel. The former would not have the compilation step. And,
> putting the typescript/webpack invocation into configure is also not
> exactly how things are meant to work. I know that the dependency
> tracking of npm is not easily compatible with bitbake, but the aim
> should be to
> 1) have a recipe that provides typescript-native
> 2) DEPEND on typescript-native in the recipe which you need to compile
> 3) add a do_compile stage that does the work.

Agreed, and I have a patched configure in my own subclass without=20
changing the official codebase -- I just wanted to point where the=20
modification needs to take place.

I actually tried the approach that you propose by playing around with=20
configure_append / compile_prepend tasks, but these build steps are=20
called after the package has already been packed --> the compiled data=20
is not being=C2=A0 installed, I'd have to re-pack things.

Agreed, a typescript-native package would be nice, on the other hand=20
this is where the npm-version-chaos comes in again: Many packages use=20
different tsc versions,...

Simon


> Greetz
>
>=20
>
--=20
VoXel Interaction Design  |  www.voxel.at
DI Dr.techn. Simon Vogl   |  simon@voxel.at
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     |
Office address: Industriezeile 35, 4020 Linz (2nd floor)


--------------51AC1783C00A8D41FF217F29
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi,</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Am 12.02.21 um 11:12 schrieb Josef
      Holzmayr:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=3DQ@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Howdy!

Thanks for sharing, a few comments inline.

Am Fr., 12. Feb. 2021 um 11:03 Uhr schrieb Simon Vogl <a class=3D"moz-txt-=
link-rfc2396E" href=3D"mailto:simon@voxel.at">&lt;simon@voxel.at&gt;</a>:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
I have some remarks and questions about the npm/nodejs support in dunfell =
that I wanted to share. We are creating nodejs-based IoT edge solutions and=
 upgrading our build environments to Dunfell one by one. In the course of t=
his, we are switching to the new npm-implementation and found a few small i=
ssues.

Firstly, the do_configure() task takes quite some time to complete. After =
a quick analysis, I saw that most of the time is being spent in creating th=
e npmrc files while packing the dependent packages. I wrote a small workaro=
und to directly create the file instead of calling 'npm config', which resu=
lts in a 3x-4x speedup:

Signed-off-by: Simon Vogl <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:simon@voxel.at">&lt;simon@voxel.at&gt;</a>
---
 lib/bb/fetch2/npm.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/lib/bb/fetch2/npm.py b/lib/bb/fetch2/npm.py
index 4789850..2720d87 100644
--- a/lib/bb/fetch2/npm.py
+++ b/lib/bb/fetch2/npm.py
@@ -97,13 +97,18 @@ class NpmEnvironment(object):
                 cmd =3D "NPM_CONFIG_GLOBALCONFIG=3D%s " % cfgfile + cmd
                 return runfetchcmd(cmd, d, workdir=3Dworkdir)

+            cfg =3D open(cfgfile, "a")
             if self.configs:
                 for key, value in self.configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(value=
)))
+                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
+                    #_run("npm config set %s %s" % (key, shlex.quote(valu=
e)))

             if configs:
                 for key, value in configs:
-                    _run("npm config set %s %s" % (key, shlex.quote(value=
)))
+                    cfg.write("%s=3D%s\n" % (key, shlex.quote(value)))
+                    # _run("npm config set %s %s" % (key, shlex.quote(val=
ue)))
+
+            cfg.close()

             if args:
                 for key, value in args:
--
2.7.4

Are there any side effects that I did not stumble over yet? And I'd LOVE t=
o have these calls running in a thread-pool for better performance...
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
The main side effect is that you're effectively patching poky, which
is bad for maintenance.
</pre>
    </blockquote>
    I know, that's why I'm asking in the first place. But performance
    here is really really improvable.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=3DQ@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Secondly, our projects are =
based on typescript, so a native compile step is necessary to create a comp=
iled version for packing. We experimented with a separate release branch to=
 check in compiled versions, but this is not easy to handle. I played aroun=
d with npm.bbclass and found a way to extend configure (!) with a call to o=
ur build script before packaging:

diff --git a/meta/classes/npm.bbclass b/meta/classes/npm.bbclass
index 068032a1e5..31535098cf 100644
--- a/meta/classes/npm.bbclass
+++ b/meta/classes/npm.bbclass
@@ -170,6 +170,11 @@ python npm_do_configure() {

     # Configure the main package
     with tempfile.TemporaryDirectory() as tmpdir:
+        # install all (native) build dependencies, overrides npm cache:
+        ret =3D os.system("npm i")
+        # run build step:
+        env.run("npm run build", args=3D[], workdir=3Dd.getVar("S"))
+
         tarball =3D npm_pack(env, d.getVar("S"), tmpdir)
         npm_unpack(tarball, d.getVar("NPM_PACKAGE"), d)

As we have plain JS packages as well, I put the modified configure() in a =
subclass and this works for us, but it does not look like a clean solution =
to me. How do you other IoT'ers address this situation?
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Again, patching poky is a bad idea. Creating custom bbclasses is much
neater: you could create a base include, and pull that together with
npm.bbclass into two final bbclasses of yours, like npm-js-voxel and
npm-ts-voxel. The former would not have the compilation step. And,
putting the typescript/webpack invocation into configure is also not
exactly how things are meant to work. I know that the dependency
tracking of npm is not easily compatible with bitbake, but the aim
should be to
1) have a recipe that provides typescript-native
2) DEPEND on typescript-native in the recipe which you need to compile
3) add a do_compile stage that does the work.
</pre>
    </blockquote>
    <p>Agreed, and I have a patched configure in my own subclass without
      changing the official codebase -- I just wanted to point where the
      modification needs to take place.</p>
    <p>I actually tried the approach that you propose by playing around
      with configure_append / compile_prepend tasks, but these build
      steps are called after the package has already been packed --&gt;
      the compiled data is not being=C2=A0 installed, I'd have to re-pack
      things.</p>
    <p>Agreed, a typescript-native package would be nice, on the other
      hand this is where the npm-version-chaos comes in again: Many
      packages use different tsc versions,...<br>
    </p>
    <p>Simon<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CAEt6NwrMx0j7ppYCmACfsrZ+qJWoS3WONdsOcb9g+H_4SHyg=3DQ@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
Greetz
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
VoXel Interaction Design  |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"http://www.voxel.at">www.voxel.at</a>
DI Dr.techn. Simon Vogl   |  <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:simon@voxel.at">simon@voxel.at</a>
Tomaschekweg 46           |  +43 650 2323 555
A-4040 Linz - Austria     |  
Office address: Industriezeile 35, 4020 Linz (2nd floor)</pre>
  </body>
</html>

--------------51AC1783C00A8D41FF217F29--
