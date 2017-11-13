Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 575F0E00C77; Sun, 12 Nov 2017 21:40:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0642E00BEA
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 21:40:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vAD5epU9029717
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 12 Nov 2017 21:40:51 -0800
Received: from [128.224.162.167] (128.224.162.167) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Sun, 12 Nov 2017 21:40:50 -0800
To: Zhen LiWei <zhenlw@msn.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>
	<69b58a42-f0dd-e6a0-d13a-0ae5fc3ee6ab@windriver.com>
	<KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <83429dd1-12f0-8b79-56cb-3f4933edf1c5@windriver.com>
Date: Mon, 13 Nov 2017 13:41:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com>
X-Originating-IP: [128.224.162.167]
Subject: =?UTF-8?B?UmU6IOetlOWkjTogdXNlIG5hdGl2ZSAoY3Jvc3MpIHRvb2xjaGFpbiBpbnN0ZWFkIG9mIGEgcG9wdWxhdGVkIG5hdGl2ZXNkayAoY3Jvc3MtY2FuYWRpYW4pIHRvb2xjaGFpbg==?=
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
X-List-Received-Date: Mon, 13 Nov 2017 05:40:54 -0000
Content-Type: multipart/alternative;
	boundary="------------5347BD8A00D759F26644E42A"

--------------5347BD8A00D759F26644E42A
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/13/2017 09:44 AM, Zhen LiWei wrote:
>
> Thank you. The SDK installing host being different is actually not our 
> concern: we have some strict definition of what host distro we should 
> use when using the SDK.
>
> And basically the native toolchain works rather fine. And I can (I 
> think) use it with some confidence.
>
> The other goal of mine---using the x86_64_linux sysroot to develop x86 
> native programs---however, is difficult. For 1) Quite some patches 
> needed for autotools, pkg-config, etc…. 2) basic libraries like 
> openssl need to co-exist with the host-distro-native ones, so when 
> building binaries upon them I need to be very careful (ly manipulating 
> the pkg-config, xxx-config, and rpathes). 3) various in-house and 
> 3rdparty binaries need to be built on this complex setup, which use 
> different config/build infrastructures.
>
> So basically this is not how the native sysroot is intended to be used 
> (but in the BB env it is controled very well: every native package can 
> be built in it). So I need to continue to improve my procedure, or 
> just give it up and use a qemu image instead.
>
> Liwei
>

 From previous emails, I can see that your major concern is about SDK 
and application development. And you want to keep SDK in sync across 
different hosts.
eSDK and devtool in new Yocto releases are designed to solve such problems.
I'd suggest you take a look at these tools if you are interested.

P.S. From my experience, if you make custom scripts to wrapper yocto 
projects, you should keep things as simple as possible. Otherwise, there 
would be a lot of work when you want to use new yocto releases.

Best Regards,
Chen Qi

> ------------------------------------------------------------------------
> *发件人:* ChenQi <Qi.Chen@windriver.com>
> *发送时间:* Thursday, November 9, 2017 10:48:41 AM
> *收件人:* Zhen LiWei; yocto@yoctoproject.org
> *主题:* Re: [yocto] use native (cross) toolchain instead of a populated 
> nativesdk (cross-canadian) toolchain
> If I understand it correctly, you are talking about using native 
> components directly for SDK.
> If you are using all the same machine with the same OS, you could use 
> native components directly, maybe with a little modification.
> But in fact, the host where SDK is installed might be different from 
> the host where SDK is built.
> Check the SDKMACHINE variable.
>
> Best Regards,
> Chen Qi
>
> On 11/07/2017 11:09 PM, Zhen LiWei wrote:
>>
>> Hi, I am working on a yocto 2.0 based distro and we usually 
>> populate_sdk and use the toolchain included in SDK.
>>
>> But we also like to check the SDK into a SVN repo, and checkout it 
>> anywhere, and use it away right where it is checked out. And since 
>> the nativesdk binaries are based on a different glibc than native, 
>> and have the “dynamic loader” path hardcoded in them, I have to patch 
>> the toolchain binaries’ .interp secion to point to a common place, 
>> and update the loader into that common place automatically in some 
>> way. Other than this, things work very good for us.
>>
>> Then I was thinking: is it a good practice, to use the native/cross 
>> toolchain directly from the tmp/sysroots/x86_64-native folder. I 
>> tried and succeeded, by just moving the sysroot to where the 
>> checked-out nativesdk toolchain was.
>>
>> An extra bonus about this is that we got a more populated sysroot for 
>> native platform too, for example a openssl dev package at the same 
>> version as that on target, that we can actually use to make the 
>> native platform a closer-to-target dev env for some “workbench” build.
>>
>> However I’m still wondering: is there any thing negative about this 
>> style? One thing known is that the SDK-using host need to be similar 
>> to the SDK-building host, but that is not an issue for us. But 
>> anything else, guys?
>>
>>
>>
>


--------------5347BD8A00D759F26644E42A
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/13/2017 09:44 AM, Zhen LiWei
      wrote:<br>
    </div>
    <blockquote
cite="mid:KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;
	color:windowtext;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Thank you. The SDK
            installing host being different is actually not our concern:
            we have some strict definition of what host distro we should
            use when using the SDK.</span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">And basically the native
            toolchain works rather fine. And I can (I think) use it with
            some confidence.</span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">The other goal of
            mine---using the x86_64_linux sysroot to develop x86 native
            programs---however, is difficult. For 1) Quite some patches
            needed for autotools, pkg-config, etc…. 2) basic libraries
            like openssl need to co-exist with the host-distro-native
            ones, so when building binaries upon them I need to be very
            careful (ly manipulating the pkg-config, xxx-config, and
            rpathes). 3) various in-house and 3rdparty binaries need to
            be built on this complex setup, which use different
            config/build infrastructures.</span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">So basically this is not
            how the native sysroot is intended to be used (but in the BB
            env it is controled very well: every native package can be
            built in it). So I need to continue to improve my procedure,
            or just give it up and use a qemu image instead.</span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Liwei</span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:SimSun" lang="EN-US"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
    From previous emails, I can see that your major concern is about SDK
    and application development. And you want to keep SDK in sync across
    different hosts.<br>
    eSDK and devtool in new Yocto releases are designed to solve such
    problems.<br>
    I'd suggest you take a look at these tools if you are interested.<br>
    <br>
    P.S. From my experience, if you make custom scripts to wrapper yocto
    projects, you should keep things as simple as possible. Otherwise,
    there would be a lot of work when you want to use new yocto
    releases.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          face="Calibri, sans-serif" color="#000000"><b>发件人:</b> ChenQi
          <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a><br>
          <b>发送时间:</b> Thursday, November 9, 2017 10:48:41 AM<br>
          <b>收件人:</b> Zhen LiWei; <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
          <b>主题:</b> Re: [yocto] use native (cross) toolchain instead of
          a populated nativesdk (cross-canadian) toolchain</font>
        <div> </div>
      </div>
      <div>
        <div class="moz-cite-prefix">If I understand it correctly, you
          are talking about using native components directly for SDK.<br>
          If you are using all the same machine with the same OS, you
          could use native components directly, maybe with a little
          modification.<br>
          But in fact, the host where SDK is installed might be
          different from the host where SDK is built.<br>
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
          <div dir="auto">
            <div class="gmail_extra" dir="auto">
              <div class="gmail_quote">
                <p style="font-family: sans-serif; font-size: 18.048px;">Hi,
                  I am working on a yocto 2.0 based distro and we
                  usually populate_sdk and use the toolchain included in
                  SDK.</p>
                <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
                <p style="font-family: sans-serif; font-size: 18.048px;">But
                  we also like to check the SDK into a SVN repo, and
                  checkout it anywhere, and use it away right where it
                  is checked out. And since the nativesdk binaries are
                  based on a different glibc than native, and have the
                  “dynamic loader” path hardcoded in them, I have to
                  patch the toolchain binaries’ .interp secion to point
                  to a common place, and update the loader into that
                  common place automatically in some way. Other than
                  this, things work very good for us.</p>
                <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
                <p style="font-family: sans-serif; font-size: 18.048px;">Then
                  I was thinking: is it a good practice, to use the
                  native/cross toolchain directly from the
                  tmp/sysroots/x86_64-native folder. I tried and
                  succeeded, by just moving the sysroot to where the
                  checked-out nativesdk toolchain was.</p>
                <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
                <p style="font-family: sans-serif; font-size: 18.048px;">An
                  extra bonus about this is that we got a more populated
                  sysroot for native platform too, for example a openssl
                  dev package at the same version as that on target,
                  that we can actually use to make the native platform a
                  closer-to-target dev env for some “workbench” build.<span
                    style="font-size:12pt"></span></p>
                <p style="font-family: sans-serif; font-size: 18.048px;"> </p>
                <p style="font-family: sans-serif; font-size: 18.048px;">However
                  I’m still wondering: is there any thing negative about
                  this style? One thing known is that the SDK-using host
                  need to be similar to the SDK-building host, but that
                  is not an issue for us. But anything else, guys?</p>
              </div>
            </div>
          </div>
          <br>
          <fieldset class="mimeAttachmentHeader"></fieldset>
          <br>
        </blockquote>
        <p><br>
        </p>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------5347BD8A00D759F26644E42A--
