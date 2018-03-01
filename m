Return-Path: <rdhobi@slscorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD8C4E010C8; Thu,  1 Mar 2018 03:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 584 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Mar 2018 03:04:59 PST
Received: from ns524875.ip-192-99-5.net (ns524875.ip-192-99-5.net
	[192.99.5.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8A1FE00DCE
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 03:04:59 -0800 (PST)
Received: from mail2.slscorp.com (unknown [117.239.215.177])
	by ns524875.ip-192-99-5.net (Postfix) with ESMTPSA id BA8FC5080108
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 05:55:14 -0500 (EST)
DomainKey-Signature: a=rsa-sha1;  q=dns; c=nofws; s=default; d=slscorp.com;
	b=t/zfva8D64uAZ5JB6/pIXc8jbqLZK9JjfbzS6S7CN51G8rclFvK3lqpGxYxhxh6abdLeJFFdpItnZFT6n5xNZh0tVDl0FId60b8h9JbDEdn8NFLToK9rWMi839mFaHf7AOFSVGNE5A8/CkQzs0D+MrUukqdUwokO5eKEwwwNHgQ=;
	h=Received:Reply-To:To:From:Subject:Organization:Message-ID:Date:User-Agent:MIME-Version:Content-Type:Content-Language;
Received: from [192.168.0.31] (Unknown [192.168.0.31])
	by mail2.slscorp.com with ESMTPA ; Thu, 1 Mar 2018 16:25:11 +0530
To: yocto@yoctoproject.org
From: Rahul Dhobi <rdhobi@slscorp.com>
Organization: System Level Solutions (India) Pvt.Ltd.
Message-ID: <2f2af597-3e39-470d-3bbb-1783ddcd046c@slscorp.com>
Date: Thu, 1 Mar 2018 16:25:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 Mar 2018 08:08:54 -0800
Subject: Yocto plugin java null pointer exception issue.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: rdhobi@slscorp.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Mar 2018 11:05:13 -0000
Content-Type: multipart/alternative;
	boundary="------------52368AA4B8EDFCC291F22E15"
Content-Language: en-US

--------------52368AA4B8EDFCC291F22E15
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

We are currently building windows SDK using Yocto 2.4. So far we are 
able to generate SDK for windows but getting "java null pointer 
exception". We found there was bug 
<https://bugzilla.yoctoproject.org/show_bug.cgi?id=7211> raised for same 
issue but, we are still facing same issue in org.yocto.sdk - 
1.4.1.201710162310 
<http://downloads.yoctoproject.org/releases/eclipse-plugin/2.4/oxygen/features/org.yocto.sdk_1.4.1.201710162310.jar> 
plugin. Please help us to use sdk in eclipse with Yocto adt plugin.

-- 


          Regards,
          Rahul R Dhobi,
          System Level Solutions (I) Pvt. Ltd.


--------------52368AA4B8EDFCC291F22E15
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,<br>
    </p>
    <p>We are currently building windows SDK using Yocto 2.4. So far we
      are able to generate SDK for windows but getting "java null
      pointer exception". We found there was <a
        href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=7211">bug</a>
      raised for same issue but, we are still facing same issue in <a
href="http://downloads.yoctoproject.org/releases/eclipse-plugin/2.4/oxygen/features/org.yocto.sdk_1.4.1.201710162310.jar">org.yocto.sdk
        - 1.4.1.201710162310</a> plugin. Please help us to use sdk in
      eclipse with Yocto adt plugin. </p>
    <div class="moz-signature">-- <br>
      <h5>Regards,<br>
        Rahul R Dhobi,<br>
        System Level Solutions (I) Pvt. Ltd.
        <br>
      </h5>
    </div>
  </body>
</html>

--------------52368AA4B8EDFCC291F22E15--
