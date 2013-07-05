Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 364A9E01488
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 10:02:06 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id c10so5949591ieb.10
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2013 10:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type;
	bh=pvbimBR8a/9VD7ntxxDG7RhS4/GdzS6Sft9uWMO+sbg=;
	b=HMRkrlhyLJLTmeP41a3qOHPjnjD6ebAKqwtY+Q6YRYG2uVebxpAleV7JtwDH14ihOd
	ULp9nI7GX10M2Zon9U5ps2e/FQqbFIyaiTYVup7ANhD4l0DbE70hry0UVWbfdVybvvBH
	F5eKNc/NfEl0KcAQCWgcc7S0O9/lhOdx1z+CY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=pvbimBR8a/9VD7ntxxDG7RhS4/GdzS6Sft9uWMO+sbg=;
	b=ftseSBRLIFX4sNIffR8WT4NbOHJCUiLACOsfgVFdodtiZNOCJ8Zgm6eGKE/pAsYoNn
	dtrRmWChYH8kwaj2caSEYhH2bAetJ5eMoX/4MpMD2ifaZc6mABQOl0JwuyRzyL9Puv/q
	AgwV+e0s49xnYgYCBZvx8T5qdbgoicq9e/CgHelkEnmiq9lEM1Cbuz+vrw41d/hVzf2n
	3a9DXQ+40TE3HYUeyniO9oxiPh3RNSYnU+KaqLK7L22LMieExUyHaudJa6Y2IhFuGz7A
	bsNmBpAQ9LUPnuljI4g4pUJZgFH1/sgsTy5LKqq9btZdvDgA211QRqNrkilZFFWMake7
	4szA==
X-Received: by 10.50.154.38 with SMTP id vl6mr4833235igb.44.1373043725822;
	Fri, 05 Jul 2013 10:02:05 -0700 (PDT)
Received: from pride.localdomain (static-50-43-57-222.bvtn.or.frontiernet.net.
	[50.43.57.222])
	by mx.google.com with ESMTPSA id p10sm29883023igx.4.2013.07.05.10.02.03
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 05 Jul 2013 10:02:04 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51D6FC09.4000506@yoctoproject.org>
Date: Fri, 05 Jul 2013 10:02:01 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
References: <51D39006.5000000@yoctoproject.org>
	<51D3A0A2.2040008@yoctoproject.org>
	<51D4C38A.2090800@yoctoproject.org>
	<1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.intel.com>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQmDqf8ChztlID22VEPRIFt6pILT68ZSnJTzwEXHKDVGx2/hOvQvKpeROJFG2/g3Q+/bTwuV
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project 1.5_M2.rc1 build status
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
X-List-Received-Date: Fri, 05 Jul 2013 17:02:07 -0000
X-Groupsio-MsgNum: 14842
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms030101020808080805090000"

--------------ms030101020808080805090000
Content-Type: multipart/alternative;
 boundary="------------030608010009040404080109"

--------------030608010009040404080109
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you. The final steps of
http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/ were blocked
and never completed so there may be other things missing as well. We
probably need to do another build before releasing but it will hopefully
be from the same commit as well.

Michael Halstead
Yocto Project / Sys Admin

On 07/05/2013 01:05 AM, Georgescu, Alexandru C wrote:
>
> Hi Michael,
>
> The adt-installer is missing from the
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/ build. But
> since it is using the same commit for as
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-2 build, we
> will use the one there instead for testing.
>
> =20
>
> Regards,
>
> *--*
>
> *Alexandru Georgescu*
>
> =20
>
> *From:*Michael Halstead [mailto:mhalstead@linuxfoundation.org] *On
> Behalf Of *Michael Halstead
> *Sent:* Thursday, July 04, 2013 03:36
> *To:* yocto@yoctoproject.org
> *Subject:* Re: Yocto Project 1.5_M2.rc1 build status
>
> =20
>
> Adidtional autobuilder configuration errors were corrected and a third
> spin of 1.5_M2.rc1 started. Please find the build at the new location:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20130703-3
>
>
> poky                   eaa5df34af42b6a37f6506847d0f3ef6ba0d298a <https:=
//git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f=
6506847d0f3ef6ba0d298a>
> meta-fsl-arm           daf582c93a7283fb0af3b25fe2ada48f4c9985c4 <https:=
//git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=3Ddaf582c93a=
7283fb0af3b25fe2ada48f4c9985c4>
> meta-fsl-ppc           a2bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Change=
d since last build)
> meta-intel             e0d6134ed2e2687ff9f2ee77701666447842bf33 <https:=
//git.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?id=3De0d6134ed2e2=
687ff9f2ee77701666447842bf33>
> meta-minnow            286a72ba3f5e29432be1dd77127de5bdc2d988c3 <https:=
//git.yoctoproject.org/cgit/cgit.cgi/meta-minnow/commit/?id=3D286a72ba3f5=
e29432be1dd77127de5bdc2d988c3>=20
> meta-qt3               b73552fb998fd30a01dbee5a172e432a16078222 <https:=
//git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=3Db73552fb998fd3=
0a01dbee5a172e432a16078222>
> eclipse-poky           e35dfd79e3970f88a8273125890a54f75f108b97 <https:=
//git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3De35dfd79e3=
970f88a8273125890a54f75f108b97>=20
>
> Please begin QA as soon as possible. Thank you.
>


--------------030608010009040404080109
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DISO-8859-1"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">Thank you. The final steps of <span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D"><a
          moz-do-not-send=3D"true"
          href=3D"http://autobuilder.yoctoproject.org/pub/nightly/2013070=
3-3/">http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/</a>
      </span>were blocked and never completed so there may be other
      things missing as well. We probably need to do another build
      before releasing but it will hopefully be from the same commit as
      well.<br>
      <br>
      <pre class=3D"moz-signature" cols=3D"72">Michael Halstead
Yocto Project / Sys Admin

</pre>
      On 07/05/2013 01:05 AM, Georgescu, Alexandru C wrote:<br>
    </div>
    <blockquote
cite=3D"mid:1FFB62CE8AEB0D4298B51122D8903E9619F0E894@IRSMSX104.ger.corp.i=
ntel.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3DISO-8859-1">
      <meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.moz-txt-link-freetext
	{mso-style-name:moz-txt-link-freetext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	color:black;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
=2EMsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">Hi
            Michael,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">The
            adt-installer is missing from the
            <a moz-do-not-send=3D"true"
              href=3D"http://autobuilder.yoctoproject.org/pub/nightly/201=
30703-3/">http://autobuilder.yoctoproject.org/pub/nightly/20130703-3/</a>=

            build. But since it is using the same commit for as
            <a moz-do-not-send=3D"true"
              href=3D"http://autobuilder.yoctoproject.org/pub/nightly/201=
30703-2">http://autobuilder.yoctoproject.org/pub/nightly/20130703-2</a>
            build, we will use the one there instead for testing.<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">Regards,<o:p></o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><b><span
style=3D"font-size:8.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;;color:#7F7F7F">--<o:p></o:p></span></b></p>
          <p class=3D"MsoNormal"><b><span
style=3D"font-size:8.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;;color:#7F7F7F">Alexandru
                Georgescu<o:p></o:p></span></b></p>
        </div>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext">From:</span></b><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext">
                Michael Halstead [<a class=3D"moz-txt-link-freetext" href=
=3D"mailto:mhalstead@linuxfoundation.org">mailto:mhalstead@linuxfoundatio=
n.org</a>]
                <b>On Behalf Of </b>Michael Halstead<br>
                <b>Sent:</b> Thursday, July 04, 2013 03:36<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Subject:</b> Re: Yocto Project 1.5_M2.rc1 build
                status<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class=3D"MsoNormal">Adidtional autobuilder configuration error=
s
          were corrected and a third spin of 1.5_M2.rc1 started. Please
          find the build at the new location:<br>
          <a moz-do-not-send=3D"true"
            href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130=
703-3"><br>
            <span class=3D"moz-txt-link-freetext">http://autobuilder.yoct=
oproject.org/pub/nightly/20130703-3</span></a><br>
          <br>
          <br>
          <o:p></o:p></p>
        <pre>poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a moz-do-not-send=3D"tru=
e" href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3De=
aa5df34af42b6a37f6506847d0f3ef6ba0d298a">eaa5df34af42b6a37f6506847d0f3ef6=
ba0d298a</a><o:p></o:p></pre>
        <pre>meta-fsl-arm&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <a moz-do-not-send=3D"true" href=3D"https://git.yoctoproject.org/=
cgit/cgit.cgi/meta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0af3b25fe2ada48f4=
c9985c4">daf582c93a7283fb0af3b25fe2ada48f4c9985c4</a><o:p></o:p></pre>
        <pre>meta-fsl-ppc&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; a2bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Changed since last buil=
d)<o:p></o:p></pre>
        <pre>meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" href=3D"https://git.yoctopr=
oject.org/cgit/cgit.cgi/meta-intel/commit/?id=3De0d6134ed2e2687ff9f2ee777=
01666447842bf33">e0d6134ed2e2687ff9f2ee77701666447842bf33</a><o:p></o:p><=
/pre>
        <pre>meta-minnow&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; <a moz-do-not-send=3D"true" href=3D"https://git.yoctoproject=
=2Eorg/cgit/cgit.cgi/meta-minnow/commit/?id=3D286a72ba3f5e29432be1dd77127=
de5bdc2d988c3">286a72ba3f5e29432be1dd77127de5bdc2d988c3</a> <o:p></o:p></=
pre>
        <pre>meta-qt3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; <a moz-do-not-send=3D"true" href=3D"https://g=
it.yoctoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=3Db73552fb998fd30a0=
1dbee5a172e432a16078222">b73552fb998fd30a01dbee5a172e432a16078222</a><o:p=
></o:p></pre>
        <pre>eclipse-poky&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <a moz-do-not-send=3D"true" href=3D"https://git.yoctoproject.org/=
cgit/cgit.cgi/eclipse-poky/commit/?id=3De35dfd79e3970f88a8273125890a54f75=
f108b97">e35dfd79e3970f88a8273125890a54f75f108b97</a> <o:p></o:p></pre>
        <p class=3D"MsoNormal">Please begin QA as soon as possible. Thank=

          you. <o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030608010009040404080109--

--------------ms030101020808080805090000
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINjDCCBjQw
ggQcoAMCAQICASAwDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDI1NVoX
DTE3MTAyNDIxMDI1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMsohUWcASz7GfKrpTOMKqANy9BV7V0igWdGxA8IU77L3aTxErQ+
fcxtDYZ36Z6GH0YFn7fq5RADteP0AYzrCA+EQTfi8q1+kA3m0nwtwXG94M5sIqsvs7lRP1aycBke
/s5g9hJHryZ2acScnzczjBCAo7X1v5G3yw8MDP2m2RCye0KfgZ4nODerZJVzhAlOD9YejvAXZqHk
sw56HzElVIoYSZ3q4+RJuPXXfIoyby+Y2m1E+YzX5iCZXBx05gk6MKAW1vaw4/v2OOLy6FZH3XHH
tOkzUreG//CsFnB9+uaYSlR65cdGzTsmoIK8WH1ygoXhRBm98SD7Hf/r3FELNvUCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBSuVYNv7DHKufcd
+q9rMfPIHeOsuzAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBADqpJw3I07QW
ke9plNBpxUxcffc7nUrIQpJHDci91DFG7fVhHRkMZ1J+BKg5UNUxIFJ2Z9B90Micc/NXcs7kPBRd
n6XGO/vPc87Y6R+cWS9Nc9+fp3Enmsm94OxOwI9wn8qnr/6o3mD4noP9JphwUPTXwHovjavRnhUQ
HLfo/i2NG0XXgTHXS2Xm0kVUozXqpYpAdumMiB/vezj1QHQJDmUdPYMcp+reg9901zkyT3fDW/iv
JVv6pWtkh6Pw2ytZT7mvg7YhX3V50Nv860cV11mocUVcqBLv0gcT+HBDYtbuvexNftwNQKD5193A
7zN4vG7CTYkXxytSjKuXrpEatEiFPxWgb84nVj25SU5q/r1Xhwby6mLhkbaXslkVtwEWT3Van49r
KjlK4XrUKYYWtnfzq6aSak5u0Vpxd1rY79tWhD3EdCvOhNz/QplNa+VkIsrcp7+8ZhP1l1b2U6Ma
xIVteuVMD3X0vziIwr7jxYae9FZjbxlpUemqXjcC0QaFfN7qI0JsQMALL7iGRBg7K0CoOBzECdD3
fuZil5kU/LP9cr1BK31U0Uy651bFnAMMMkqhAChIbn0ei72VnbpSsrrSdF0BAGYQ8vyHae5aCg+H
75dVCV33K6FuxZrf09yTz+Vx/PkdRUYkXmZz/OTfyJXsUOUXrym6KvI2rYpccSk5MIIHUDCCBjig
AwIBAgICIgMwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MjA2MTMwNDU5MjlaFw0xNDA2MTQxNjE4MzBaMIGRMRkwFwYDVQQNExBnMDFwWTYwMWJGM1BrRTY3
MQswCQYDVQQGEwJVUzEPMA0GA1UECBMGT3JlZ29uMRIwEAYDVQQHEwlIaWxsc2Jvcm8xGTAXBgNV
BAMTEE1pY2hhZWwgSGFsc3RlYWQxJzAlBgkqhkiG9w0BCQEWGG1pY2hhZWxAeW9jdG9wcm9qZWN0
Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMFZ+GW0VKdiyuQy3hlOvwcHxcm0
8ZwNGGah4zipYky5wVFZO7p9LjJfyF6rvd24xdkaTluxTMmd9pfq2cOVQ6c3RsPufv1yBUbytk6F
4Wk+qD0qEGjuHh5FfakcLIEsHiSn3nzaQZHaolS/yzx/A3coQS8pQrshZYqAF/ME5OxMyL8KDdtk
xatt1reDPqzvI5rKYdeEbmHsTYgd9WWHvs8MfZFHidZoAXMXU+PcsKCUxEYhgP/h9NKcTApu/Mhd
IPKn11pD+gfDM+ochGu1uxuW/t1tNJyRYDVQSDV+rpliQ7mrimSmyktIKkow02pUk4Xw3OqdYq7/
/HpVOUs5nk8CAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUcZFNotb1OfDmPE6GQ6MQIBh7meUwHwYDVR0j
BBgwFoAUrlWDb+wxyrn3HfqvazHzyB3jrLswIwYDVR0RBBwwGoEYbWljaGFlbEB5b2N0b3Byb2pl
Y3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCCAf8wLgYIKwYBBQUHAgEW
Imh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUFBwICMIHqMCcWIFN0YXJ0
Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNlcnRpZmljYXRlIHdhcyBp
c3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAyIFZhbGlkYXRpb24gcmVxdWlyZW1lbnRzIG9m
IHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9yIHRoZSBpbnRlbmRlZCBw
dXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkgb2JsaWdhdGlvbnMuMIGc
BggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgECGmRM
aWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBzZWN0aW9uICJMZWdhbCBh
bmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3kuMDYGA1UdHwQvMC0wK6Ap
oCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUyLWNybC5jcmwwgY4GCCsGAQUFBwEBBIGB
MH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9zdWIvY2xhc3MyL2NsaWVu
dC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvc3ViLmNsYXNz
Mi5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkq
hkiG9w0BAQUFAAOCAQEANR/d6M8GHL/rkx3Kz9ILDxYMcekmFgefaDXNQMicUHiUw5TsIl5af1pS
Y2AvbKlA2/FZnyG8w42FuK6ZQBZJxs4/N10NW8qDmuuFTi6TyJgurj73tx9RogW50miDHMZLoMRe
avB1h8zy99L2lRPZSebpSFkrQdYDHaGRVhYMjEcWNW9cLxhR8BaAEw/KlpERv3hUQpwGMppYOE66
M7KJ3HpeR7DXfa4njL9W2hukTQNsskdWtzejHp5iQ65+5Mv+NXLmYP4uLJcR9AbttgNhwStc0P1b
LxnQkElGeUzATOBq+QsVZ7Fo6sSS7kqrhpfaPibqpj83m/wSgpKVsbZJ3DGCA9owggPWAgEBMIGT
MIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQ
cmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAiIDMAkGBSsOAwIaBQCgggIbMBgGCSqGSIb3
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDcwNTE3MDIwMVowIwYJKoZIhvcN
AQkEMRYEFIq64+9PsaEQLwEeNwVnqps6t5IPMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAtHMnnPW+HQqHj1m7CLzoEPk9mCiS
7iWQW7ZZobiuXLpMFOJFgeK2/3ddstjwGc90pjIDRgzmGfso1TeW78fSrSc10bd4MQ9hbymDuEPr
5VYlWZSxNobayw9UEjI9dE42DbDqVAOPmXt1QfiYrwH4QxudC5UcHSb4fN8x6vddyh2ZgnN4V1wK
UFODxL4UBbD0Rz8kZ7lv/6B1YbO2L3WD7547xthRPQ2wYvyixLHQQzXVR0RsBBC+r6BHs3VOBEWJ
I5W8TtstNyJhFUdt8bcSGLri1bR/9RhmwFG2WlFqj7shfsTgd1lCZ6Mrcyz3XDCiKyFl0PTVeDln
4nZuU7LwAwAAAAAAAA==

--------------ms030101020808080805090000--
