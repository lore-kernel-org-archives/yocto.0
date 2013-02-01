Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BBD9E00515
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2013 11:51:02 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id hz11so2401364pad.3
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2013 11:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:x-enigmail-version:content-type;
	bh=J0+ChUfZOkLhyGwTOnwU8GjvkYJlm7HvRlB68bIx9Zc=;
	b=hUPMbc5Y/NLZZ4eP46i4ywZnPkkW3bQE05R9aveQXrfaOV+J293MGX8XUpqU9lAryn
	2IfeCkI/KS23IW5SCzEEDeJOmkYgOcyK7TT9j7FdUJqfWqkz3SbpiYUi8Ec3ff2O+lKH
	YLeGYGA00gIXC/8aLCPIpPZRd0lkY5NUcEbHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=J0+ChUfZOkLhyGwTOnwU8GjvkYJlm7HvRlB68bIx9Zc=;
	b=XbXr0UHBMAY2d5CVWjoHiciSMUee6sNrgqWDGyiVDJT02yhgk6H47cQS5RMN0i+br8
	V7jByeTDFwcbqgYCUx7SYms9L8s3RpbofWaPBDbTr73p5TO8OE4ahugjaRzZfziw7JsJ
	41hFeh4z+3fsRMSb9YBHrPLyDc2qkBtEYosh0unJhJQxJ4M/XlODOj4uVJc1BpITRExs
	Dd8j9a5cpzqagg+KdX6XoKMFROf/lbHEu4uvl3Oc7A694t0nPBu9YKbr/cZTV/je9pDG
	jkoPD3gYW/Zk8j3eDD2JFuCcyiUUfj3PAc+5bpYUO5ATz265wS7nMzLUHBijGTIksSBm
	yJ1A==
X-Received: by 10.68.236.2 with SMTP id uq2mr35140339pbc.55.1359748262261;
	Fri, 01 Feb 2013 11:51:02 -0800 (PST)
Received: from [192.168.1.66] (static-50-43-14-175.bvtn.or.frontiernet.net.
	[50.43.14.175])
	by mx.google.com with ESMTPS id m3sm10057126pav.4.2013.02.01.11.50.59
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Feb 2013 11:51:00 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <510C1CBF.9000500@yoctoproject.org>
Date: Fri, 01 Feb 2013 11:51:27 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50C5AEE0.30606@yoctoproject.org>
	<CAHu0NawFL+wfHrZaDTYAxWkZ+6kdgrrAsTEB6esWTZRCTFkseQ@mail.gmail.com>
	<CAHu0NaxpAi2x0i=y6--B+nxqn9TgpUL--adXd1PpSDU0Pno2KA@mail.gmail.com>
In-Reply-To: <CAHu0NaxpAi2x0i=y6--B+nxqn9TgpUL--adXd1PpSDU0Pno2KA@mail.gmail.com>
X-Enigmail-Version: 1.4.6
X-Gm-Message-State: ALoCoQls0zM02js1jYdbgtuoQZwnMrKYlPCIluUGr/GWKUyPF4ZlJv6bXpAWnfPLAkjLBWTasiC9
Subject: Re: GMA3600 VGA Driver
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
X-List-Received-Date: Fri, 01 Feb 2013 19:51:02 -0000
X-Groupsio-MsgNum: 11872
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms050005010702060403020205"

--------------ms050005010702060403020205
Content-Type: multipart/alternative;
 boundary="------------010803020701020804090002"

--------------010803020701020804090002
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/01/2013 11:22 AM, F=E1bio Laureano Ant=F4nio wrote:
> Dear kindly ask for help to solve the demand mentioned above.
>
After re-reading your e-mail it seems you are trying to find GMA3600
drivers for Ubuntu 12.10, not trying to build an embedded OS with
GMA3600 support. Is that correct?

If so this is probably not the right place to ask for assistance. If you
are building an OS with Yocto Project can you please share what board
you are working with?

Michael Halstead
Yocto Project / Sys Admin

> Since I am already grateful for the attention.
>
> ---------- Forwarded message ----------
> From: *F=E1bio Laureano Ant=F4nio* <fabiolaureano@bsd.com.br
> <mailto:fabiolaureano@bsd.com.br>>
> Date: 2012/12/11
> Subject: Re: GMA3600 VGA Driver
> To: Michael Halstead <michael@yoctoproject.org
> <mailto:michael@yoctoproject.org>>
>
>
> Dear Michael,
>
> I can not perform any of downloading dependencies mentioned on the
> page that you sent me. Attached hereto presented with error. And I'm a
> little confused on how this process could please illustrate how to
> install and configure the driver GMA3600?
> I have over 40 computers waiting for this solution to be able to open
> a supermarket.
>
> Since I am already grateful for the attention.
>
>
> 2012/12/10 Michael Halstead <michael@yoctoproject.org
> <mailto:michael@yoctoproject.org>>
>
>     Hello,
>
>     Have you looked at the sources from the Cedartrail BSP
>     <https://www.yoctoproject.org/download/intel%C2%AE-atom%E2%84%A2-pr=
ocessor-n2000-and-d2000-series-based-platform-cedar-trail-powervr-graphic=
s-0>?
>     I think this contains the driver you are interested in. Please
>     tell me if this helped you.
>
>     Best regards,
>
>     --=20
>     Michael Halstead
>     Yocto Project / Sys Admin
>
>>     ask about link so I can download the driver for the card GMA
>>     3600. For I have the OS Ubuntu 12.10 and need for running this
>>     adapter. Thank you for your attention.
>
>
>
>
> --=20
> F=E1bio Laureano - Consultor de TI
> Ribeir=E3o Vermelho - MG - BRAZIL
> 35 9803-3428 <tel:35%209803-3428>
>
>
>
>
> --=20
> F=E1bio Laureano - Consultor de TI
> Ribeir=E3o Vermelho - MG - BRAZIL
> 35 9803-3428
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------010803020701020804090002
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DISO-8859-1"
      http-equiv=3D"Content-Type">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div class=3D"moz-cite-prefix">On 02/01/2013 11:22 AM, F&aacute;bio L=
aureano
      Ant&ocirc;nio wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAHu0NaxpAi2x0i=3Dy6--B+nxqn9TgpUL--adXd1PpSDU0Pno2KA@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr"><span id=3D"result_box" class=3D"" lang=3D"en"><sp=
an
            class=3D"">Dear</span> <span class=3D"">kindly</span> <span
            class=3D"">ask for</span> <span class=3D"">help</span> <span
            class=3D"">to solve</span> <span class=3D"">the demand</span>=
 <span
            class=3D"">mentioned</span> <span class=3D"">above.</span><br=
>
          <br>
        </span></div>
    </blockquote>
    After re-reading your e-mail it seems you are trying to find GMA3600
    drivers for Ubuntu 12.10, not trying to build an embedded OS with
    GMA3600 support. Is that correct?<br>
    <br>
    If so this is probably not the right place to ask for assistance. If
    you are building an OS with Yocto Project can you please share what
    board you are working with?<br>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">Michael Halstead
Yocto Project / Sys Admin</pre>
    <blockquote
cite=3D"mid:CAHu0NaxpAi2x0i=3Dy6--B+nxqn9TgpUL--adXd1PpSDU0Pno2KA@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr"><span id=3D"result_box" class=3D"" lang=3D"en"><sp=
an
            class=3D"">Since</span> <span class=3D"">I am already</span> =
<span
            class=3D"">grateful for the</span> <span class=3D"">attention=
</span><span
            class=3D"">.</span></span><br>
        <br>
        <div class=3D"gmail_quote">---------- Forwarded message ---------=
-<br>
          From: <b class=3D"gmail_sendername">F&aacute;bio Laureano Ant&o=
circ;nio</b>
          <span dir=3D"ltr">&lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:fabiolaureano@bsd.com.br">fabiolaureano@bsd.=
com.br</a>&gt;</span><br>
          Date: 2012/12/11<br>
          Subject: Re: GMA3600 VGA Driver<br>
          To: Michael Halstead &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:michael@yoctoproject.org">michael@yoctoproject=
=2Eorg</a>&gt;<br>
          <br>
          <br>
          <span lang=3D"en"><span>Dear</span> <span>Michael,</span><br>
            <br>
            <span>I can not perform</span> <span>any of</span> <span>down=
loading</span>
            <span>dependencies</span> <span>mentioned</span> <span>on
              the page that</span> <span>you</span> <span>sent me.</span>=

            <span>Attached hereto</span> <span>presented</span> <span>wit=
h
              error</span><span>.</span> <span>And I'm</span> <span>a
              little confused</span> <span>on how</span> <span>this
              process</span> <span>could</span> <span>please</span> <span=
>illustrate</span>
            <span>how to install and</span> <span>configure the driver</s=
pan>
            <span>GMA3600</span><span>?</span><br>
            <span>I have over</span> <span>40 computers</span> <span>wait=
ing
              for</span> <span>this solution</span> <span>to be able
              to</span> <span>open a</span> <span>supermarket.</span><br>=

            <br>
            <span>Since</span> <span>I am already</span> <span>grateful
              for the</span> <span>attention</span><span>.</span></span>
          <div class=3D"gmail_extra">
            <div>
              <div class=3D"h5"><br>
                <br>
                <div class=3D"gmail_quote">2012/12/10 Michael Halstead <s=
pan
                    dir=3D"ltr">&lt;<a moz-do-not-send=3D"true"
                      href=3D"mailto:michael@yoctoproject.org"
                      target=3D"_blank">michael@yoctoproject.org</a>&gt;<=
/span><br>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                    <div text=3D"#000000" bgcolor=3D"#FFFFFF"> Hello,<br>=

                      <br>
                      Have you looked at the sources from <a
                        moz-do-not-send=3D"true"
href=3D"https://www.yoctoproject.org/download/intel%C2%AE-atom%E2%84%A2-p=
rocessor-n2000-and-d2000-series-based-platform-cedar-trail-powervr-graphi=
cs-0"
                        target=3D"_blank">the Cedartrail BSP</a>? I think=

                      this contains the driver you are interested in.
                      Please tell me if this helped you.<br>
                      <br>
                      Best regards,<span><font color=3D"#888888"><br>
                          <pre cols=3D"72">--=20
Michael Halstead
Yocto Project / Sys Admin

<blockquote type=3D"cite">ask about link so I can download the driver for=
 the card GMA 3600. For I
 have the OS Ubuntu 12.10 and need for running this adapter.



Thank you for your attention.</blockquote>
</pre>
                        </font></span></div>
                  </blockquote>
                </div>
                <br>
                <br clear=3D"all">
                <br>
              </div>
            </div>
            <span class=3D""><font color=3D"#888888">-- <br>
                F&aacute;bio Laureano - Consultor de TI<br>
                <div style=3D"text-align:left">Ribeir&atilde;o Vermelho -=
 MG -
                  BRAZIL <br>
                </div>
                <a moz-do-not-send=3D"true" href=3D"tel:35%209803-3428"
                  value=3D"+553598033428" target=3D"_blank">35 9803-3428<=
/a><br>
                <br>
              </font></span></div>
        </div>
        <br>
        <br clear=3D"all">
        <br>
        -- <br>
        F&aacute;bio Laureano - Consultor de TI<br>
        <div style=3D"text-align:left">Ribeir&atilde;o Vermelho - MG - BR=
AZIL <br>
        </div>
        35 9803-3428<br>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
yocto mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctoproject.org=
/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010803020701020804090002--

--------------ms050005010702060403020205
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDIwMTE5NTEyN1owIwYJKoZIhvcN
AQkEMRYEFDMLGeAX0s42C6dnHNebR4ByXSf8MGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEABA7O+xHTMcJ04DhlUlb7fhuR2za+
aCwbIV8CFndj5xoIqaEBlIgftHnIYqW1auAvYJX0qmpju2TnQf48+3UfMagM6uvir8oENYNPOUkj
6ajLwfiN/8/MPsDKQN6lM4Xt7YwReH64zxd3kK5AMJhIKoKMIWMGjnJfmQWYBcGgHED98NMb9RzQ
tGkrtbmj8kzHdF3TjBJPqvlMok2e3jHffb0TzCj/XnX3Rgdd8QZ56UcES8+rUuCuxmg55J8hnd31
yYnPfWoMwJPzha+qhlcK3X6ubdlQqLK4yA7NEsy3J+2Ko/EpBlcwFS8k86H1XbHprM4wSA0L7T6+
QgIAQdMTDAAAAAAAAA==

--------------ms050005010702060403020205--
