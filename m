Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23AAAE00D2D; Wed,  8 Nov 2017 18:47:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A5F5E00CE8
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 18:47:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vA92lIhU017851
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Nov 2017 18:47:18 -0800 (PST)
Received: from [128.224.163.189] (128.224.163.189) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 8 Nov 2017 18:47:17 -0800
To: Zhen LiWei <zhenlw@msn.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <69b58a42-f0dd-e6a0-d13a-0ae5fc3ee6ab@windriver.com>
Date: Thu, 9 Nov 2017 10:48:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>
X-Originating-IP: [128.224.163.189]
Subject: Re: use native (cross) toolchain instead of a populated nativesdk (cross-canadian) toolchain
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
X-List-Received-Date: Thu, 09 Nov 2017 02:47:21 -0000
Content-Type: multipart/alternative;
	boundary="------------FD2F60B3B524D1771DD1E16A"

--------------FD2F60B3B524D1771DD1E16A
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

If I understand it correctly, you are talking about using native 
components directly for SDK.
If you are using all the same machine with the same OS, you could use 
native components directly, maybe with a little modification.
But in fact, the host where SDK is installed might be different from the 
host where SDK is built.
Check the SDKMACHINE variable.

Best Regards,
Chen Qi

On 11/07/2017 11:09 PM, Zhen LiWei wrote:
>
> Hi, I am working on a yocto 2.0 based distro and we usually 
> populate_sdk and use the toolchain included in SDK.
>
> But we also like to check the SDK into a SVN repo, and checkout it 
> anywhere, and use it away right where it is checked out. And since the 
> nativesdk binaries are based on a different glibc than native, and 
> have the “dynamic loader” path hardcoded in them, I have to patch the 
> toolchain binaries’ .interp secion to point to a common place, and 
> update the loader into that common place automatically in some way. 
> Other than this, things work very good for us.
>
> Then I was thinking: is it a good practice, to use the native/cross 
> toolchain directly from the tmp/sysroots/x86_64-native folder. I tried 
> and succeeded, by just moving the sysroot to where the checked-out 
> nativesdk toolchain was.
>
> An extra bonus about this is that we got a more populated sysroot for 
> native platform too, for example a openssl dev package at the same 
> version as that on target, that we can actually use to make the native 
> platform a closer-to-target dev env for some “workbench” build.
>
> However I’m still wondering: is there any thing negative about this 
> style? One thing known is that the SDK-using host need to be similar 
> to the SDK-building host, but that is not an issue for us. But 
> anything else, guys?
>
>
>


--------------FD2F60B3B524D1771DD1E16A
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">If I understand it correctly, you are
      talking about using native components directly for SDK.<br>
      If you are using all the same machine with the same OS, you could
      use native components directly, maybe with a little modification.<br>
      But in fact, the host where SDK is installed might be different
      from the host where SDK is built.<br>
      Check the SDKMACHINE variable.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/07/2017 11:09 PM, Zhen LiWei wrote:<br>
    </div>
    <blockquote
cite="mid:PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="auto">
        <div class="gmail_extra" dir="auto">
          <div class="gmail_quote">
            <p style="font-family: sans-serif; font-size: 18.048px;">Hi,
              I am working on a yocto 2.0 based distro and we usually
              populate_sdk and use the toolchain included in SDK.</p>
            <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
            <p style="font-family: sans-serif; font-size: 18.048px;">But
              we also like to check the SDK into a SVN repo, and
              checkout it anywhere, and use it away right where it is
              checked out. And since the nativesdk binaries are based on
              a different glibc than native, and have the “dynamic
              loader” path hardcoded in them, I have to patch the
              toolchain binaries’ .interp secion to point to a common
              place, and update the loader into that common place
              automatically in some way. Other than this, things work
              very good for us.</p>
            <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
            <p style="font-family: sans-serif; font-size: 18.048px;">Then
              I was thinking: is it a good practice, to use the
              native/cross toolchain directly from the
              tmp/sysroots/x86_64-native folder. I tried and succeeded,
              by just moving the sysroot to where the checked-out
              nativesdk toolchain was.</p>
            <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
            <p style="font-family: sans-serif; font-size: 18.048px;">An
              extra bonus about this is that we got a more populated
              sysroot for native platform too, for example a openssl dev
              package at the same version as that on target, that we can
              actually use to make the native platform a
              closer-to-target dev env for some “workbench” build.<span
                style="font-size:12pt"></span></p>
            <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
            <p style="font-family: sans-serif; font-size: 18.048px;">However
              I’m still wondering: is there any thing negative about
              this style? One thing known is that the SDK-using host
              need to be similar to the SDK-building host, but that is
              not an issue for us. But anything else, guys?</p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------FD2F60B3B524D1771DD1E16A--
