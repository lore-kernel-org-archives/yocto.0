Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2696E00E7D; Thu, 25 Jan 2018 05:37:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cloudserver096301.home.pl (cloudserver096301.home.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4183E00B66
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 05:37:42 -0800 (PST)
Received: from 109241231046.gdansk.vectranet.pl (109.241.231.46) (HELO
	[192.168.3.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id 8d887390e28138fe; Thu, 25 Jan 2018 14:37:40 +0100
To: Peter Spierenburg <peter.spierenburg@nautel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
	<MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <94ea0e3c-29d4-40a1-19db-f716ddcd4dde@3mdeb.com>
Date: Thu, 25 Jan 2018 14:37:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
Subject: Re: How do I generate a dtb for my board support package?
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
X-List-Received-Date: Thu, 25 Jan 2018 13:37:44 -0000
Content-Type: multipart/alternative;
	boundary="------------E261601ECD48B89C29EFFECA"
Content-Language: en-US

--------------E261601ECD48B89C29EFFECA
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 25.01.2018 14:16, Peter Spierenburg wrote:
> | make[2]: *** No rule to make target `sc589-ezkit.dts'.  Stop.
You are building linux-yocto. You need to either add a patch to SRC_URI 
which adds this
dtb target to linux source, or build from a different repository, where 
this support is already
included. I would check from which linux tree they build kernel in 
buildroot BSP.
You will also need proper kernel configuration file for your board.

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------E261601ECD48B89C29EFFECA
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 25.01.2018 14:16, Peter Spierenburg
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com"><span
        style="font-family:Consolas,Courier,monospace">| make[2]: *** No
        rule to make target `sc589-ezkit.dts'.  Stop.<br>
      </span></blockquote>
    You are building linux-yocto. You need to either add a patch to
    SRC_URI which adds this<br>
    dtb target to linux source, or build from a different repository,
    where this support is already<br>
    included. I would check from which linux tree they build kernel in
    buildroot BSP.<br>
    You will also need proper kernel configuration file for your board.<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------E261601ECD48B89C29EFFECA--
