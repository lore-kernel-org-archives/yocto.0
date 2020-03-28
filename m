Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.79])
 by mx.groups.io with SMTP id smtpd.web10.13865.1585424762731782751
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 12:46:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=JG4kfgXO;
 spf=pass (domain: outlook.com, ip: 40.92.73.79, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSK77trjPExErTsJqA5M3+AYyClKpMhRFEGJv614jQVUEKP5EyW9hhzclbRPtbR2AY83Mq/v5NQvgFnF6JlsbtYD4FaQ2MNN+yUTdGhdQZdlxNWSZsmvW91FzWoRmKK/FkLl7fqsUtHE7uSqt0tv+zItc3U7oK3QQVTcoUMvrdzxEjxYI8Jsdly9Iqx3IP7KmOsHu+KMXNamlPvNqNHsgHXO3dYGfXbM1LXBaQdNhEhxuPVD9ccNmkFRalYwmt8uOnqZlzQVRO0NTeza1dxks1fllZOpJcbW1V5zQOEgwcMwCJtlc/hrFwx21RVb2LiurwoLIscLWNbbt0BWd8LFHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMz+1FrRWwBqYZ9iJMheHTDexV7yvINCabu6W+L+Rac=;
 b=T8E5oeF+N7pJR0cUt1AIp7HhNRlcCa6YDrB6DLkzS1sLp3weW2BDCT9Ct4Me+LYZ5lhCielH131s5mjMiB6DemjxRXik83l6rHTFivS9LfUokGSmXWCS5pK/LkYB3C/yUPRqfaX3MHJpf72ftjQJVvHdttM8iOGeqX75v+wyhump+X4qH5PorJ/fjSFhshlU0Pvh1tOFOvJgH4tSF1phgszqtoEtjzkaMlrNdogqDsrH4k5GcrF39Gcwq1/V16yZRdP8+nj8DWfx+8b1AQF9pQ2qVWGTpbCenvFnDx3jMk/lApb3dA/FfQ/GpyNBD/mpejTu5Pwlh6/D4Rcj3NuAxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMz+1FrRWwBqYZ9iJMheHTDexV7yvINCabu6W+L+Rac=;
 b=JG4kfgXO9nnLl5wpDFXuuRUvAVG5LBLrNf6RTz+IkP8b3adR1U04a7A5u0gMHEE09f00f0oU6apcbtz2mMpfOtRlGJT8PzPCrSIxQE5lbzVANE71GmhfSpVM+JpQ6FmAaK7mpqMUOcc78K024M+r5LdlzuQ3672D7reMacHX/QGg5Qvc/9dOM5meNH1wAbc1sXJ2PAhg0jmhci0fa9ltcu7IA0R2x9L/9LwV8uDpsqBJun01W5JOVaPihkpkBi2lTKAlOwIX8zk1RDSPTr8sUAZg18F4GTYew2l0H25aoVyyi1vE2DNKk6qo39mgW2KLtlb3SGBpPEwllP3o6HEosQ==
Received: from VI1EUR04FT041.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0e::47) by
 VI1EUR04HT155.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0e::451)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Sat, 28 Mar
 2020 19:46:00 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com (10.152.28.60) by
 VI1EUR04FT041.mail.protection.outlook.com (10.152.29.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 19:46:00 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:56369BFAEE17AC7ABCD3B189096162DBA1988C6034971A98F85AE44CA744F5A6;UpperCasedChecksum:9B9C768CEE4563275E2FD3D348DBAA85BA04F2A14776F804C8E39B5AA5BEBF88;SizeAsReceived:8262;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 19:46:00 +0000
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
To: Ajam Ali <AjamA@hcl.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <VI1PR05MB4286DCEF29A234000881D0F9A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <HK0PR04MB2914C357A6A0A484356ED66BB4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR05MB42862BE1A8635037E743881CA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Sat, 28 Mar 2020 20:45:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <HK0PR04MB2914C357A6A0A484356ED66BB4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
X-ClientProxiedBy: AM6P195CA0002.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::15) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <b69eb049-c0d0-dbd5-6da4-d423daeff52c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.87.90) by AM6P195CA0002.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend Transport; Sat, 28 Mar 2020 19:45:59 +0000
X-Microsoft-Original-Message-ID: 
 <b69eb049-c0d0-dbd5-6da4-d423daeff52c@outlook.com>
X-TMN: [Cii+Gi6TFtZzEk78SpGSj2LEaf9nhnjO]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 2f99fc75-4b89-49b2-2386-08d7d350a3da
X-MS-TrafficTypeDiagnostic: VI1EUR04HT155:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RkjaXxMT2QCPGqztruXZYUGbEeT8RSJpfwPpd6bTAD2h8VIU6iIg/Cd/gPBlWWOQJ9q2vOH2xhJzxA4QiuhCvZZEnNtxt7DE/j7qL0cerL8O9jWX85m6E5LOjgxf0tkDPPOoWczrkqwE9Z+pVCcTV+fxf9RB3NqKQIKeweE/7oAW9Zpakrb3MrrgaoNoF2Fsz+owz0csMWi9fX8KuNswaxeJVKXTRqsvLAKrdanUtgs=
X-MS-Exchange-AntiSpam-MessageData: 
	QAYKFocyLN3ZR5YTXhlodXU6TQxq6XSSE9wuldgQ4vg43Vl/4mb9sQZha/QJj2GAN4ctrMJAcxIs8uhg6LF817Wv01dcH//z/wr1uQ5lRav1EWXwpOfBiJvtE306lH3mN4qxEn06cPiEUcObDwtOOA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f99fc75-4b89-49b2-2386-08d7d350a3da
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 19:45:59.9209
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT155
Content-Type: multipart/alternative;
 boundary="------------DD227868B22BA728EA05B155"
Content-Language: en-US

--------------DD227868B22BA728EA05B155
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

HI,


800MB sounds fairly much for just the base system - maybe there is some 
potential for you to slim it down.
If your project requires all these packages, I' afraid there isn't an 
easy magical switch to reduce the size.

What you could do is take the image manifest 
(https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-IMAGE_MANIFEST) 
and browse manually though it, if there

is any obvious package that shouldn't be installed, which could be 
removed - but to be honest 3.9GB for all that stuff required according 
to your list sounds like a reasonable size for the rootfs.

If you already know what the real "big ones" are in your image you could 
try to configure them to include only things really needed - if not you 
could also take the

image manifest feed the information into "oe-pkgdata-util package-info 
<pkgname>" to get the size of the package.

I guess from here on you can take it.


In the end 3.9GB for a fully fledged development environment doesn't 
sounds too much - just remember a vanilla ubuntu for example takes at 
least 15GB.


BR

Konrad


On 28.03.20 19:36, Ajam Ali wrote:
> Hi Konrad,
>
> Actually my current image size is 3.9GB because of heavy size packages 
> required by my project and without project required packages my image 
> size in Yocto is 800MB.
>
> I want to reduce the image size as maximum as possible.
>
>
> Thanks a lot in advance,
> Ajam Ali
> ------------------------------------------------------------------------
> *From:* Konrad Weihmann <kweihmann@outlook.com>
> *Sent:* Saturday, March 28, 2020 7:38 PM
> *To:* Ajam Ali <AjamA@hcl.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] Fw: Reducing rootfs size in yocto
>
> **[CAUTION: This Email is from outside the Organization. Do not click 
> links or open attachments unless you trust the sender.]
>
> Pretty general questions, but I try to answer your question.
>
>
> I don't know what the purpose of your image is, but installing 
> development tools like boost-dev or gcc (I guess that is what you mean 
> with cpp) makes your image automatically a lot bigger, I would suggest 
> to put devtools into a SDK, which could be shipped separately.
>
>
> Next thing you can do is to analyze the what is actually so big in 
> your image, e.g. by creating a tar.gz of the image, unpacking it and 
> browsing by 'du -sh *'.
> You can get the package/recipe to a file by using 'oe-pkgdata-util 
> find-path <path>'.
>
>
> In the identified recipe you can look for PACKAGECONFIG or 
> OE_EXTRACONF switches that you don't need and disable them.
>
>
> As said, I don't know what the purpose/environment of your image will 
> be like, but you could also consider to use a different fs-format like 
> squash.
>
>
> In general if you want small images preferring musl over glibc and 
> systemV over systemd is something that you could consider as well.
>
>
> TL;DR
>
>
> 1) move to SDK
>
> 2) check PACKAGECONFIG switches
>
> 3) same as 2 or consider something "smaller" like lxc
>
> 4) same as 2
>
> 5) same as 2
>
> 6) same as 2
>
> 7) move to SDK
>
> 8) same as 2
>
>
> On 28.03.20 14:25, Ajam Ali wrote:
>>
>>
>> ------------------------------------------------------------------------
>> Hi All,
>>
>> I am trying to reduce the image size.
>>
>> how can i  reduce the size of following packages so that i could get 
>> a small image size after integrating these packages in yocto?
>>
>>
>> 1) boost-dev 2) docker 3) containerd-opencontainers 4) nodejs 5) 
>> nodejs-npm 6) python3-numpy 7) cpp 8) postgresql
>>
>>
>>
>> Thanks in advance,
>>
>> Ajam Ali
>>
>>
>> ::DISCLAIMER::
>> ------------------------------------------------------------------------
>> The contents of this e-mail and any attachment(s) are confidential 
>> and intended for the named recipient(s) only. E-mail transmission is 
>> not guaranteed to be secure or error-free as information could be 
>> intercepted, corrupted, lost, destroyed, arrive late or incomplete, 
>> or may contain viruses in transmission. The e mail and its contents 
>> (with or without referred errors) shall therefore not attach any 
>> liability on the originator or HCL or its affiliates. Views or 
>> opinions, if any, presented in this email are solely those of the 
>> author and may not necessarily reflect the views or opinions of HCL 
>> or its affiliates. Any form of reproduction, dissemination, copying, 
>> disclosure, modification, distribution and / or publication of this 
>> message without the prior written consent of authorized 
>> representative of HCL is strictly prohibited. If you have received 
>> this email in error please delete it and notify the sender 
>> immediately. Before opening any email and/or attachments, please 
>> check them for viruses and other defects.
>> ------------------------------------------------------------------------
>>
>> 

--------------DD227868B22BA728EA05B155
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-1252">
  </head>
  <body>
    <p>HI,</p>
    <p><br>
    </p>
    <p>800MB sounds fairly much for just the base system - maybe there
      is some potential for you to slim it down.<br>
      If your project requires all these packages, I' afraid there isn't
      an easy magical switch to reduce the size.</p>
    <p>What you could do is take the image manifest
(<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-IMAGE_MANIFEST">https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-IMAGE_MANIFEST</a>)
      and browse manually though it, if there</p>
    <p>is any obvious package that shouldn't be installed, which could
      be removed - but to be honest 3.9GB for all that stuff required
      according to your list sounds like a reasonable size for the
      rootfs.</p>
    <p>If you already know what the real &quot;big ones&quot; are in your image
      you could try to configure them to include only things really
      needed - if not you could also take the <br>
    </p>
    <p>image manifest feed the information into &quot;oe-pkgdata-util
      package-info &lt;pkgname&gt;&quot; to get the size of the package.</p>
    <p>I guess from here on you can take it.</p>
    <p><br>
    </p>
    <p>In the end 3.9GB for a fully fledged development environment
      doesn't sounds too much - just remember a vanilla ubuntu for
      example takes at least 15GB.</p>
    <p><br>
    </p>
    <p>BR</p>
    <p>Konrad</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 28.03.20 19:36, Ajam Ali wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:HK0PR04MB2914C357A6A0A484356ED66BB4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com">
      
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Hi Konrad,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Actually my current image size is 3.9GB because of heavy size
        packages required by my project and without project required
        packages my image size in Yocto is 800MB.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        I want to reduce the image size as maximum as possible.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Thanks a lot in advance,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        Ajam Ali<br>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt" face="Calibri, sans-serif" color="#000000"><b>From:</b> Konrad
          Weihmann <a class="moz-txt-link-rfc2396E" href="mailto:kweihmann@outlook.com">&lt;kweihmann@outlook.com&gt;</a><br>
          <b>Sent:</b> Saturday, March 28, 2020 7:38 PM<br>
          <b>To:</b> Ajam Ali <a class="moz-txt-link-rfc2396E" href="mailto:AjamA@hcl.com">&lt;AjamA@hcl.com&gt;</a><br>
          <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
          <a class="moz-txt-link-rfc2396E" href="mailto:yocto@lists.yoctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a><br>
          <b>Subject:</b> Re: [yocto] Fw: Reducing rootfs size in yocto</font>
        <div>&nbsp;</div>
      </div>
      <div>
        <p class="x_MsoNormal" style="line-height:12.0pt;
          background:#FFEB9C"><b><span style="font-size:10.0pt;
              color:#9C6501"></span></b><span style="font-size:10.0pt;
            color:red">[CAUTION: This Email is from outside the
            Organization. Do not click links or open attachments unless
            you trust the sender.]</span></p>
        <div>
          <p>Pretty general questions, but I try to answer your
            question.</p>
          <p><br>
          </p>
          <p>I don't know what the purpose of your image is, but
            installing development tools like boost-dev or gcc (I guess
            that is what you mean with cpp) makes your image
            automatically a lot bigger, I would suggest to put devtools
            into a SDK, which could be shipped separately.</p>
          <p><br>
          </p>
          <p>Next thing you can do is to analyze the what is actually so
            big in your image, e.g. by creating a tar.gz of the image,
            unpacking it and browsing by 'du -sh *'.<br>
            You can get the package/recipe to a file by using
            'oe-pkgdata-util find-path &lt;path&gt;'.</p>
          <p><br>
          </p>
          <p>In the identified recipe you can look for PACKAGECONFIG or
            OE_EXTRACONF switches that you don't need and disable them.</p>
          <p><br>
          </p>
          <p>As said, I don't know what the purpose/environment of your
            image will be like, but you could also consider to use a
            different fs-format like squash.</p>
          <p><br>
          </p>
          <p>In general if you want small images preferring musl over
            glibc and systemV over systemd is something that you could
            consider as well.</p>
          <p><br>
          </p>
          <p>TL;DR</p>
          <p><br>
          </p>
          <p>1) move to SDK</p>
          <p>2) check PACKAGECONFIG switches</p>
          <p>3) same as 2 or consider something &quot;smaller&quot; like lxc<br>
          </p>
          <p>4) same as 2</p>
          <p>5) same as 2</p>
          <p>6) same as 2</p>
          <p>7) move to SDK</p>
          <p>8) same as 2<br>
          </p>
          <p><br>
          </p>
          <div class="x_moz-cite-prefix">On 28.03.20 14:25, Ajam Ali
            wrote:<br>
          </div>
          <blockquote type="cite">
            <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
            <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0);
              background-color:rgb(255,255,255)">
              <br>
            </div>
            <div>
              <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <hr tabindex="-1" style="display:inline-block; width:98%">
              <div id="x_divRplyFwdMsg" dir="ltr">
                <div>&nbsp;</div>
              </div>
              <div>
                <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                  font-size:12pt; color:rgb(0,0,0);
                  background-color:rgb(255,255,255)">
                  Hi All,</div>
                <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                  font-size:12pt; color:rgb(0,0,0);
                  background-color:rgb(255,255,255)">
                  <br>
                </div>
                <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                  font-size:12pt; color:rgb(0,0,0);
                  background-color:rgb(255,255,255)">
                  I am trying to reduce the image size.<br>
                </div>
                <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                  font-size:12pt; color:rgb(0,0,0);
                  background-color:rgb(255,255,255)">
                  <br>
                </div>
                <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
                  font-size:12pt; color:rgb(0,0,0);
                  background-color:rgb(255,255,255)">
                  <p style="margin-top:0px; margin-bottom:0px">how can
                    i&nbsp; reduce the size of following packages so that i
                    could get a small image size after integrating these
                    packages in yocto?</p>
                  <p style="margin-top:0px; margin-bottom:0px"><br>
                  </p>
                  <p style="margin-top:0px; margin-bottom:0px">1)
                    boost-dev 2) docker 3) containerd-opencontainers 4)
                    nodejs 5) nodejs-npm 6) python3-numpy 7) cpp 8)
                    postgresql</p>
                  <p style="margin-top:0px; margin-bottom:0px"><br>
                  </p>
                  <p style="margin-top:0px; margin-bottom:0px"><br>
                  </p>
                  <p style="margin-top:0px; margin-bottom:0px">Thanks in
                    advance,</p>
                  <p style="margin-top:0px; margin-bottom:0px">Ajam Ali<br>
                  </p>
                  <br>
                </div>
              </div>
            </div>
            <font size="1" face="Arial" color="Gray">::DISCLAIMER::<br>
              <hr>
              The contents of this e-mail and any attachment(s) are
              confidential and intended for the named recipient(s) only.
              E-mail transmission is not guaranteed to be secure or
              error-free as information could be intercepted, corrupted,
              lost, destroyed, arrive late or incomplete, or may contain
              viruses in transmission. The e mail and its contents (with
              or without referred errors) shall therefore not attach any
              liability on the originator or HCL or its affiliates.
              Views or opinions, if any, presented in this email are
              solely those of the author and may not necessarily reflect
              the views or opinions of HCL or its affiliates. Any form
              of reproduction, dissemination, copying, disclosure,
              modification, distribution and / or publication of this
              message without the prior written consent of authorized
              representative of HCL is strictly prohibited. If you have
              received this email in error please delete it and notify
              the sender immediately. Before opening any email and/or
              attachments, please check them for viruses and other
              defects.<br>
              <hr>
            </font><br>
            <fieldset class="x_mimeAttachmentHeader"></fieldset>
            <pre class="x_moz-quote-pre">
</pre>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------DD227868B22BA728EA05B155--
