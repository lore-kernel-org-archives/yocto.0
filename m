Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web11.20997.1586800102195381488
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 10:48:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03DHmCf7018707
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 13 Apr 2020 10:48:12 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 13 Apr
 2020 10:48:11 -0700
Subject: Re: [yocto] Image size reduction
To: Ajam Ali <ajama@hcl.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>,
        "gley-yocto@m.gmane-mx.org"
	<gley-yocto@m.gmane-mx.org>
References: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
 <HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <259e6251-19b5-1e49-8ba9-73f6aac273bc@windriver.com>
Date: Mon, 13 Apr 2020 13:48:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.prod.outlook.com>
X-Originating-IP: [172.25.44.3]
Content-Type: multipart/alternative;
	boundary="------------12DEC1F3D06D75904C38F2E7"
Content-Language: en-CA

--------------12DEC1F3D06D75904C38F2E7
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2020-04-04 12:27 p.m., Ajam Ali wrote:
> Hi All,
>
> Thanks for your suggestions. I am working on your suggestions.
> I will let you know if it did not work for me.

Ajam,


It would be useful if you could reply either way.


If there's still a problem then perhaps someone can help.


If you are able to resolve the issue, then a brief summary

of what you did could help the next person who has a similar

issue.


Thanks,

../Randy

>
>
> Regards,
> Ajam Ali
>
>
> ------------------------------------------------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on 
> behalf of Gmane Admin via lists.yoctoproject.org 
> <gley-yocto=m.gmane-mx.org@lists.yoctoproject.org>
> *Sent:* Saturday, April 4, 2020 9:36 PM
> *To:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Image size reduction
> [CAUTION: This Email is from outside the Organization. Do not click 
> links or open attachments unless you trust the sender.]
>
> Op 29-03-2020 om 18:28 schreef Ajam Ali:
> > Hi All,
> >
> > Actually my current image size is 3.9GB because of heavy size packages
> > required by my project and without project required packages my image
> > size in Yocto is 800MB.
>
> So your project adds 3.1GB right
>
> > I want to reduce the image size as maximum as possible.
>
> 3.1GB is huge. Compare to f.i. Libreoffice (installed 0.5GB or so).
> Either your own code has a lot of fat, or you are pulling in lots of
> packages you don't really need. But is there no way to advise you
> without knowing more.
>
> > Please suggest the best possible way so that I could reduce the maximum
> > possible size(desirable below 1.5 GB).
> >
> >
> > Thanks in advance,
> > Ajam Ali
> >
> >
> > Sent from Outlook Mobile 
> <https://apc01.safelinks.protection.outlook.com/?url=https%3A%2F%2Faka.ms%2Fblhgte&amp;data=02%7C01%7Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C0%7C637216132261322392&amp;sdata=8in2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;reserved=0>
> > ::DISCLAIMER::
> > ------------------------------------------------------------------------
> > The contents of this e-mail and any attachment(s) are confidential and
> > intended for the named recipient(s) only. E-mail transmission is not
> > guaranteed to be secure or error-free as information could be
> > intercepted, corrupted, lost, destroyed, arrive late or incomplete, or
> > may contain viruses in transmission. The e mail and its contents (with
> > or without referred errors) shall therefore not attach any liability on
> > the originator or HCL or its affiliates. Views or opinions, if any,
> > presented in this email are solely those of the author and may not
> > necessarily reflect the views or opinions of HCL or its affiliates. Any
> > form of reproduction, dissemination, copying, disclosure, modification,
> > distribution and / or publication of this message without the prior
> > written consent of authorized representative of HCL is strictly
> > prohibited. If you have received this email in error please delete it
> > and notify the sender immediately. Before opening any email and/or
> > attachments, please check them for viruses and other defects.
> > ------------------------------------------------------------------------
> >
> >
> >
>
>
>
> 


-- 
# Randy MacLeod
# Wind River Linux


--------------12DEC1F3D06D75904C38F2E7
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 03DHmCf7018707

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-04-04 12:27 p.m., Ajam Ali
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.=
prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;ma=
rgin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Hi All,<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Thanks for your suggestions. I am working on your suggestions.</di=
v>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        I will let you know if it did not work for me.<br>
      </div>
    </blockquote>
    <p>Ajam,</p>
    <p><br>
    </p>
    <p>It would be useful if you could reply either way.</p>
    <p><br>
    </p>
    <p>If there's still a problem then perhaps someone can help.</p>
    <p><br>
    </p>
    <p>If you are able to resolve the issue, then a brief summary</p>
    <p>of what you did could help the next person who has a similar</p>
    <p>issue.</p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p>../Randy<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.=
prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Ajam Ali<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@lists=
.yoctoproject.org">yocto@lists.yoctoproject.org</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yocto@lists.yo=
ctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a> on behalf of Gmane=
 Admin
          via lists.yoctoproject.org
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:gley-yocto=3Dm=
.gmane-mx.org@lists.yoctoproject.org">&lt;gley-yocto=3Dm.gmane-mx.org@lists=
.yoctoproject.org&gt;</a><br>
          <b>Sent:</b> Saturday, April 4, 2020 9:36 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:=
yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:yocto@lists.yo=
ctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a><br>
          <b>Subject:</b> Re: [yocto] Image size reduction</font>
        <div>=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt;">
            <div class=3D"PlainText">[CAUTION: This Email is from outside
              the Organization. Do not click links or open attachments
              unless you trust the sender.]<br>
              <br>
              Op 29-03-2020 om 18:28 schreef Ajam Ali:<br>
              &gt; Hi All,<br>
              &gt;<br>
              &gt; Actually my current image size is 3.9GB because of
              heavy size packages<br>
              &gt; required by my project and without project required
              packages my image<br>
              &gt; size in Yocto is 800MB.<br>
              <br>
              So your project adds 3.1GB right<br>
              <br>
              &gt; I want to reduce the image size as maximum as
              possible.<br>
              <br>
              3.1GB is huge. Compare to f.i. Libreoffice (installed
              0.5GB or so).<br>
              Either your own code has a lot of fat, or you are pulling
              in lots of<br>
              packages you don't really need. But is there no way to
              advise you<br>
              without knowing more.<br>
              <br>
              &gt; Please suggest the best possible way so that I could
              reduce the maximum<br>
              &gt; possible size(desirable below 1.5 GB).<br>
              &gt;<br>
              &gt;<br>
              &gt; Thanks in advance,<br>
              &gt; Ajam Ali<br>
              &gt;<br>
              &gt;<br>
              &gt; Sent from Outlook Mobile &lt;<a
href=3D"https://apc01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%=
2Faka.ms%2Fblhgte&amp;amp;data=3D02%7C01%7Cajama%40hcl.com%7Cf719cb14fe674f=
86f02408d7d8b236b0%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C0%7C63721613226=
1322392&amp;amp;sdata=3D8in2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&=
amp;amp;reserved=3D0"
                moz-do-not-send=3D"true">https://apc01.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Faka.ms%2Fblhgte&amp;amp;data=3D02%7C01%7=
Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b686=
f4ca9941912%7C0%7C0%7C637216132261322392&amp;amp;sdata=3D8in2t%2B6mXtrsRwa7=
GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;amp;reserved=3D0</a>&gt;<br>
              &gt; ::DISCLAIMER::<br>
              &gt;
              ------------------------------------------------------------=
------------<br>
              &gt; The contents of this e-mail and any attachment(s) are
              confidential and<br>
              &gt; intended for the named recipient(s) only. E-mail
              transmission is not<br>
              &gt; guaranteed to be secure or error-free as information
              could be<br>
              &gt; intercepted, corrupted, lost, destroyed, arrive late
              or incomplete, or<br>
              &gt; may contain viruses in transmission. The e mail and
              its contents (with<br>
              &gt; or without referred errors) shall therefore not
              attach any liability on<br>
              &gt; the originator or HCL or its affiliates. Views or
              opinions, if any,<br>
              &gt; presented in this email are solely those of the
              author and may not<br>
              &gt; necessarily reflect the views or opinions of HCL or
              its affiliates. Any<br>
              &gt; form of reproduction, dissemination, copying,
              disclosure, modification,<br>
              &gt; distribution and / or publication of this message
              without the prior<br>
              &gt; written consent of authorized representative of HCL
              is strictly<br>
              &gt; prohibited. If you have received this email in error
              please delete it<br>
              &gt; and notify the sender immediately. Before opening any
              email and/or<br>
              &gt; attachments, please check them for viruses and other
              defects.<br>
              &gt;
              ------------------------------------------------------------=
------------<br>
              &gt;<br>
              &gt;<br>
              &gt;<br>
              <br>
              <br>
            </div>
          </span></font></div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------12DEC1F3D06D75904C38F2E7--
