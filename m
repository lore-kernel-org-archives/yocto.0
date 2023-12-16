Return-Path: <myles.dear@ktechnology.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E97C4332F
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 01:15:08 +0000 (UTC)
Received: from barb.cherry.relay.mailchannels.net (barb.cherry.relay.mailchannels.net [23.83.223.10])
 by mx.groups.io with SMTP id smtpd.web11.1828.1702689308176115963
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 17:15:08 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ktechnology.ca header.s=default header.b=b8ss2rrY;
 spf=pass (domain: ktechnology.ca, ip: 23.83.223.10, mailfrom: myles.dear@ktechnology.ca)
X-Sender-Id: hostpapa|x-authuser|myles.dear@ktechnology.ca
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 6A7BD4C18E7
	for <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 01:15:07 +0000 (UTC)
Received: from hp351.servername.online (unknown [127.0.0.6])
	(Authenticated sender: hostpapa)
	by relay.mailchannels.net (Postfix) with ESMTPA id 7B9704C1965
	for <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 01:15:06 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1702689306; a=rsa-sha256;
	cv=none;
	b=4CnrfARADC3BanZ6bSLKeRRtLMQN0v9qXzl4LUuQ1+U8mgxAeXWtZF9vC48GXCJ9IzAYEe
	oc2CAQBS0SjZW2FKrUHJal4SrJm/McvrXth7Usuw4OYyHBk80fecEmsaJuuDnHjxONzLMf
	4bLbgCrf0GkZvUjUKQQfLjAo3fQrwukW5Gp2NsQKpSyCGIHuEnpaPGRMrse9ERro2OznZs
	F0XPl5/1b1Gorp28KvIkRQu4CQBbR72y666iX8+nCAZRzunTPjZ3oFjMnvH1+MRya0Ctgy
	S9k425j0F3x3OY3Ctt2qNW6Qd2madC3Gtef0/mFH87Ognfdl14OgzWKDgp3S1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1702689306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/+TI3iAKmdS8uibXWffLD486jXRTLTXY6OXUHfaAg8w=;
	b=lVVnBFt+PfowHJhB1xz6Wi4n0uSWFn6i0O3zazmD2kMFFKLKmD5U8bEchVDxRDU4mbfHn+
	48GXAZH4qXO5kNU7+HKt7ClQSML8EZyWNVov53p4CrpgkHhkUVMwxWi/R+/VaDiD/L496v
	RBhWX0WBCg4hBkRAt1xP7ioLllFhOaH5KZ28aL3pq3id2WezwoOdLu9w18qhD8cE1mPtVn
	yX/K6gYqIa9/2c0wTPGiI6LKJrXlTQHEoN/UHZpjPcq1nk+meDX0DaBC+NwRECHzbMrOfk
	g87azrSzY5K1wUrSV/jNO+QFDZC/CppUUXluG7yVXlG+y8NRJh/u92ypX1K7MA==
ARC-Authentication-Results: i=1;
	rspamd-856c7f878f-px554;
	auth=pass smtp.auth=hostpapa smtp.mailfrom=myles.dear@ktechnology.ca
X-Sender-Id: hostpapa|x-authuser|myles.dear@ktechnology.ca
X-MC-Relay: Junk
X-MailChannels-SenderId: hostpapa|x-authuser|myles.dear@ktechnology.ca
X-MailChannels-Auth-Id: hostpapa
X-Cold-Share: 3cdac53a47cd87ce_1702689307216_1181407303
X-MC-Loop-Signature: 1702689307216:1201703413
X-MC-Ingress-Time: 1702689307216
Received: from hp351.servername.online (hp351.servername.online
 [64.34.156.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
	by 100.107.232.172 (trex/6.9.2);
	Sat, 16 Dec 2023 01:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ktechnology.ca; s=default; h=In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/+TI3iAKmdS8uibXWffLD486jXRTLTXY6OXUHfaAg8w=; b=b8ss2rrYrwgbVTBxDHmLWb6N+y
	7Kd9n3w20Lu1M97VlMeU8UMAITvi9d7MGTNsaZJyltNbdiiloIWtQ0NCdsct7I09HnL09W8o9tT+O
	oYAf5Lp3KHp+S4pu1btESQThNPdhbyMgBhhXZfK5BBYo5MPhg7xF4TZbMeg3iK/WPQKF7G6Dn8F+T
	X86OxD64y9gRqxpfyh1S8MaOdu4RRmRpa0etDPrOg436tFVWKPUoYDOXSNt8FSVi7Z4k7oPubZIxB
	Q4XkOOLV6cB8FuDIOZEs2yjQM76u858bvvzj4wQSsUQbmCmta5sWQ1yav5FtlLMpVaeLm1bWtspt/
	a5LWPsJA==;
Received: from [76.69.54.225] (port=56902 helo=[192.168.2.75])
	by hp351.servername.online with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <myles.dear@ktechnology.ca>)
	id 1rEJGl-00Du7a-1L
	for yocto@lists.yoctoproject.org;
	Fri, 15 Dec 2023 20:15:05 -0500
Content-Type: multipart/alternative;
 boundary="------------8ytyfww5gq72hWyDa9UTzAhi"
Message-ID: <7974cf33-aff5-4f15-b14b-1809ca84a68a@ktechnology.ca>
Date: Fri, 15 Dec 2023 20:14:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Looking for "ldd" that runs on x86_64 platform against an i.MX8 ARMv8
 aarch64 binary
Content-Language: en-US
From: MylesDearKtechnology <myles.dear@ktechnology.ca>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <548263bf-7473-4cff-9d00-5e52499e71aa.1702431958986@community.nxp.com>
In-Reply-To: <548263bf-7473-4cff-9d00-5e52499e71aa.1702431958986@community.nxp.com>
X-AuthUser: myles.dear@ktechnology.ca
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 01:15:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61926

This is a multi-part message in MIME format.
--------------8ytyfww5gq72hWyDa9UTzAhi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,


I=E2=80=99m sending this to the Yocto list on the request of the NXP comm=
unity.

I=E2=80=99m cross-compiling and doing AppImage packaging and sure could u=
se a=20
hand here.

Thanks,

<Myles>

11 Malcolm Place, OTTAWA, ON
K2G 4H7, CANADA

OFFICE: +1=C2=A0613=C2=A0416 8525

Canadian softphone (preferred) : +1 613 703 4152

Canadian cell : +1=C2=A0613=C2=A0858 2120

Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for Win=
dows

*From: *NXP Community <mailto:no-reply@mail-community.nxp.com>
*Sent: *December 12, 2023 8:46 PM
*To: *myles.dear@ktechnology.ca
*Subject: *[i.MX Processors] Looking for "ldd" that runs on x86_64=20
platformagainst an i.MX8 binary (Subscription Update)

Hi mdear,

mdear (Fresh Out Contributor) posted a new topic in i.MX Processors=20
<https://community.nxp.com/t5/i-MX-Processors/bd-p/imx-processors?emcs_t=3D=
S2h8ZW1haWx8dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0NjN8U1VCU=
0NSSVBUSU9OU3xoSw>=20
on 12-12-2023 06:43 PM:


      Looking for "ldd" that runs on x86_64 platform against an i.MX8
      binary
      <https://community.nxp.com/t5/i-MX-Processors/Looking-for-quot-ldd-=
quot-that-runs-on-x86-64-platform-against/m-p/1773463/emcs_t/S2h8ZW1haWx8=
dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0NjN8U1VCU0NSSVBUSU9OU=
3xoSw#M217246>


Hello, I'm cross-compiling on an x86_64 build VM running Ubuntu 20.04.6=20
LTS against a CrossControl v700 running i.MX8DualXPlus=20
cortexa35-poky-linux architecture. I've succeeded on building my app,=20
now I'm preparing to put together a single-file AppImage distribution. =C2=
=A0=20
Can linuxdeploy support a cross-compilation environment ? =C2=B7 Issue #2=
58 =C2=B7=20
linuxdeploy/linuxdeploy (github.com) Looking for cortexa35-poky-linux=20
ARM support =C2=B7 AppImage =C2=B7 Discussion #1303 (github.com)

NXP Community sent this message to myles.dear@ktechnology.ca.
You are receiving this email because a new message matches your=20
subscription to a topic.


To control which emails we send you please go to, manage your=20
subscription & notification settings=20
<https://community.nxp.com/pwmxy87654/user_subscriptions?emcs_t=3DS2h8ZW1=
haWx8dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0NjN8U1VCU0NSSVBU=
SU9OU3xoSw>.=20


--------------8ytyfww5gq72hWyDa9UTzAhi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Hello,
    <div class=3D"WordSection1">
      <p class=3D"MsoNormal"><br>
        I=E2=80=99m sending this to the Yocto list on the request of the =
NXP
        community.<br>
        <br>
        I=E2=80=99m cross-compiling and doing AppImage packaging and sure=
 could
        use a hand here.</p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      <p class=3D"MsoNormal">Thanks,</p>
      <p class=3D"MsoNormal">&lt;Myles&gt; </p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Daytona&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-CA"
          lang=3D"EN-US">11 Malcolm Place, OTTAWA, ON<br>
          K2G 4H7, CANADA</span><o:p></o:p></p>
      <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Daytona&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-CA"
          lang=3D"EN-US">OFFICE: +1=C2=A0613=C2=A0416 8525</span><o:p></o=
:p></p>
      <p class=3D"MsoNormal"><span
style=3D"font-family:&quot;Daytona&quot;,sans-serif;color:#1F497D;mso-far=
east-language:EN-CA"
          lang=3D"EN-US">Canadian softphone (preferred) : +1 613 703 4152=
</span><o:p></o:p></p>
      <p class=3D"MsoNormal"><span
style=3D"font-family:&quot;Daytona&quot;,sans-serif;color:#1F497D;mso-far=
east-language:EN-CA"
          lang=3D"EN-US">Canadian cell : +1=C2=A0613=C2=A0858 2120<o:p></=
o:p></span></p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      <p class=3D"MsoNormal">Sent from <a
          href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986"
          moz-do-not-send=3D"true">Mail</a> for Windows<o:p></o:p></p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      <div
style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E1E1=
 1.0pt;padding:3.0pt 0cm 0cm 0cm">
        <p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From:=
 </b><a
            href=3D"mailto:no-reply@mail-community.nxp.com"
            moz-do-not-send=3D"true">NXP Community</a><br>
          <b>Sent: </b>December 12, 2023 8:46 PM<br>
          <b>To: </b><a href=3D"mailto:myles.dear@ktechnology.ca"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">myle=
s.dear@ktechnology.ca</a><br>
          <b>Subject: </b>[i.MX Processors] Looking for "ldd" that runs
          on x86_64 platformagainst an i.MX8 binary (Subscription
          Update)</p>
      </div>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      <p><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">Hi
          mdear, <o:p></o:p></span></p>
      <p><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">mdear
          (Fresh Out Contributor) posted a new topic in <a
href=3D"https://community.nxp.com/t5/i-MX-Processors/bd-p/imx-processors?=
emcs_t=3DS2h8ZW1haWx8dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0=
NjN8U1VCU0NSSVBUSU9OU3xoSw"
            moz-do-not-send=3D"true">i.MX Processors</a> on 12-12-2023
          06:43 PM: <o:p></o:p></span></p>
      <p class=3D"MsoNormal"><img style=3D"width:4.8333in;height:.0104in"
          id=3D"Horizontal_x0020_Line_x0020_1"
          src=3D"cid:image002.png@01DA2EA7.D7070AB0"
          moz-do-not-send=3D"true" width=3D"464" height=3D"1" border=3D"0=
"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
</o:p></span></p>
      <h3><span style=3D"font-family:&quot;Arial&quot;,sans-serif"><a
href=3D"https://community.nxp.com/t5/i-MX-Processors/Looking-for-quot-ldd=
-quot-that-runs-on-x86-64-platform-against/m-p/1773463/emcs_t/S2h8ZW1haWx=
8dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0NjN8U1VCU0NSSVBUSU9O=
U3xoSw#M217246"
            moz-do-not-send=3D"true">Looking for "ldd" that runs on x86_6=
4
            platform against an i.MX8 binary</a> <o:p></o:p></span></h3>
      <p class=3D"email-notification-body"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">Hello=
,
          I'm cross-compiling on an x86_64 build VM running Ubuntu
          20.04.6 LTS against a CrossControl v700 running i.MX8DualXPlus
          cortexa35-poky-linux architecture. I've succeeded on building
          my app, now I'm preparing to put together a single-file
          AppImage distribution. =C2=A0 Can linuxdeploy support a
          cross-compilation environment ? =C2=B7 Issue #258 =C2=B7
          linuxdeploy/linuxdeploy (github.com) Looking for
          cortexa35-poky-linux ARM support =C2=B7 AppImage =C2=B7 Discuss=
ion #1303
          (github.com) <o:p></o:p></span></p>
      <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
=C2=A0</o:p></span></p>
      <p class=3D"MsoNormal"><img style=3D"width:6.5in;height:.0104in"
          id=3D"Horizontal_x0020_Line_x0020_2"
          src=3D"cid:image005.png@01DA2EA7.D7070AB0"
          moz-do-not-send=3D"true" width=3D"624" height=3D"1" border=3D"0=
"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
</o:p></span></p>
      <div>
        <p><span
style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">NXP
            Community sent this message to <a
              href=3D"mailto:myles.dear@ktechnology.ca"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">my=
les.dear@ktechnology.ca</a>.
            <br>
            You are receiving this email because a new message matches
            your subscription to a topic. <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif"><br>
            To control which emails we send you please go to, <a
href=3D"https://community.nxp.com/pwmxy87654/user_subscriptions?emcs_t=3D=
S2h8ZW1haWx8dG9waWNfc3Vic2NyaXB0aW9ufExRMzQxNUdVRVZGMVhUfDE3NzM0NjN8U1VCU=
0NSSVBUSU9OU3xoSw"
              moz-do-not-send=3D"true">manage your subscription &amp;
              notification settings</a>. </span><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
</o:p></span></p>
      </div>
      <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><img
            style=3D"width:.0104in;height:.0104in" id=3D"_x0000_i1025"
src=3D"http://url3791.us.khoros-mail.com/wf/open?upn=3DCq95pi8KOZ8D5-2BBW=
6w-2Fcw7e5P4AJBT0kSGRMwLuN1FPfIW-2FQQmSaFDoffozl1ipS8KysfwboawLfkjN40wouM=
GAWq8RkAyuWLXLXo0vQpvD-2BAjLbQEIcFcRf0tW30T7HOFO6DWKCaWWoW7cog4t8jn2h58Ow=
5H-2FDmClFyYMjNC7lcdvSPnheNPINvtNHLxZUQvSEHlQ"
            moz-do-not-send=3D"true" width=3D"1" height=3D"1" border=3D"0=
"></span><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
</o:p></span></p>
      <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:md5:o++dsOjfA3Wp9QM+YCGesw=3D=3D=
">
    </blockquote>
  </body>
</html>

--------------8ytyfww5gq72hWyDa9UTzAhi--

