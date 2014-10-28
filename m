Return-Path: <Jian.Liu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E8BE00873; Mon, 27 Oct 2014 19:04:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D1DE007C0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 19:04:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s9S243YJ025982
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Oct 2014 19:04:04 -0700 (PDT)
Received: from [128.224.163.134] (128.224.163.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 27 Oct 2014 19:04:03 -0700
Message-ID: <544EF91D.1030306@windriver.com>
Date: Tue, 28 Oct 2014 10:02:05 +0800
From: Liu Jian <jian.liu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>, opkg-devel
	<opkg-devel@googlegroups.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <544E11CF.6010701@windriver.com>
	<CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
	<CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com>
In-Reply-To: <CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com>
X-Mailman-Approved-At: Tue, 28 Oct 2014 08:08:08 -0700
Subject: Re: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Tue, 28 Oct 2014 02:04:12 -0000
Content-Type: multipart/alternative;
	boundary="------------060008030709080000090406"

--------------060008030709080000090406
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Paul,

Thanks to your correction.

Could you please tell me the mailing lists? I use this mailing lists 
following the
guidance of 
http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/CONTRIBUTING.

You told me that URL in your last mail. So should I follow the 
instruction in it?

Thanks very much!

Jian


于 2014年10月27日 17:55, Paul Barker 写道:
> On 27 October 2014 09:52, Paul Barker <paul@paulbarker.me.uk> wrote:
>> Sorry, you've sent a patch for oe-core to the wrong mailing lists here.
>>
>> Also, this patch doesn't apply against oe-core anyway, it looks like
>> your email program has corrupted it by wrapping lines. Please use 'git
>> send-email' if you can.
>>
>> To make this change, please submit a patch for opkg-utils itself
>> rather than for oe-core. In oe-core, we can then simply change SRCREV
>> rather than holding additional patches.
>>
>> Thanks,
>>
> Actually, that's a bit short worded. Hope it doesn't sound harsh,
> getting patches in the right format to the right list can be a pain if
> you're new to the project.
>
> If you've got any questions just ask, either on the mailing list or on
> IRC. I or someone else should be able to help you out.
>
> Thanks,
>

-- 
Jian Liu
Email: jian.liu@windriver.com
Office Phone: 86-10-84778539


--------------060008030709080000090406
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Paul,<br>
    <br>
    Thanks to your correction.<br>
    <br>
    <font color="#3366ff">Could you please tell me the mailing lists?</font>
    I use this mailing lists following the<br>
    guidance of
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/CONTRIBUTING">http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/CONTRIBUTING</a>.<br>
    <br>
    You told me that URL in your last mail. <font color="#3366ff">So
      should I follow the instruction in it?</font><br>
    <pre wrap="">Thanks very much!
</pre>
    Jian<br>
    <br>
    <br>
    <div class="moz-cite-prefix">于 2014年10月27日 17:55, Paul Barker 写道:<br>
    </div>
    <blockquote
cite="mid:CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com"
      type="cite">
      <pre wrap="">On 27 October 2014 09:52, Paul Barker <a class="moz-txt-link-rfc2396E" href="mailto:paul@paulbarker.me.uk">&lt;paul@paulbarker.me.uk&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
Sorry, you've sent a patch for oe-core to the wrong mailing lists here.

Also, this patch doesn't apply against oe-core anyway, it looks like
your email program has corrupted it by wrapping lines. Please use 'git
send-email' if you can.

To make this change, please submit a patch for opkg-utils itself
rather than for oe-core. In oe-core, we can then simply change SRCREV
rather than holding additional patches.

Thanks,

</pre>
      </blockquote>
      <pre wrap="">
Actually, that's a bit short worded. Hope it doesn't sound harsh,
getting patches in the right format to the right list can be a pain if
you're new to the project.

If you've got any questions just ask, either on the mailing list or on
IRC. I or someone else should be able to help you out.

Thanks,

</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jian Liu
Email: <a class="moz-txt-link-abbreviated" href="mailto:jian.liu@windriver.com">jian.liu@windriver.com</a>
Office Phone: 86-10-84778539</pre>
  </body>
</html>

--------------060008030709080000090406--
