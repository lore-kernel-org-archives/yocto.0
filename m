Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B003EE00B65; Wed, 20 Nov 2019 12:28:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B068E003E1
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 12:28:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAKKSgMD006524
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 20 Nov 2019 12:28:42 -0800
Received: from [128.224.56.217] (128.224.56.217) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 20 Nov 2019 12:28:42 -0800
To: Varun A <vashok890@gmail.com>, <yocto@yoctoproject.org>
References: <F8C77973-3C80-4D55-BE49-800557B4DA4F@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <26aba141-4d63-565c-e2e9-cacab023e42d@windriver.com>
Date: Wed, 20 Nov 2019 15:28:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <F8C77973-3C80-4D55-BE49-800557B4DA4F@gmail.com>
X-Originating-IP: [128.224.56.217]
Subject: Re: Doubt regarding python-elementtree rpm
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
X-List-Received-Date: Wed, 20 Nov 2019 20:28:44 -0000
Content-Type: multipart/alternative;
	boundary="------------063AB505FDC147675385F957"
Content-Language: en-CA

--------------063AB505FDC147675385F957
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/20/19 9:05 AM, Varun A wrote:
> Hi
>
> Had a doubt. While building python3 rpms using python 3.4.3 bit bake file, I am noticing that python-elementtree rpm is missing. It used to be available in package feeds in python 2.7 case. Has it been merged with another RPM? If so which one.
>
> Regards
> Varun
It was merged into python-xml:

python: merge python-elementtree into python-xml

https://git.openembedded.org/openembedded-core/commit/?id=5f7206eba3953b7f29148ecfb791995773ee5fc7

-- 
# Randy MacLeod
# Wind River Linux


--------------063AB505FDC147675385F957
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 11/20/19 9:05 AM, Varun A wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:F8C77973-3C80-4D55-BE49-800557B4DA4F@gmail.com">
      <pre class="moz-quote-pre" wrap="">Hi

Had a doubt. While building python3 rpms using python 3.4.3 bit bake file, I am noticing that python-elementtree rpm is missing. It used to be available in package feeds in python 2.7 case. Has it been merged with another RPM? If so which one.

Regards
Varun
</pre>
    </blockquote>
    <div class="commit-subject">It was merged into python-xml:</div>
    <div class="commit-subject"><br>
    </div>
    <div class="commit-subject">
      <div class="commit-subject">python: merge python-elementtree into
        python-xml</div>
    </div>
    <p><a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/commit/?id=5f7206eba3953b7f29148ecfb791995773ee5fc7">https://git.openembedded.org/openembedded-core/commit/?id=5f7206eba3953b7f29148ecfb791995773ee5fc7</a><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------063AB505FDC147675385F957--
