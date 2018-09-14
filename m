Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B82E1E0090C; Fri, 14 Sep 2018 11:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F31E00720
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Sep 2018 11:50:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8EInVGr011002
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Sep 2018 11:49:42 -0700
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 14 Sep 2018 11:49:21 -0700
To: Ayman Hassan <Ayman.Hassan@ideainmotion.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <HE1PR0301MB2332FDB93B86A1BADB529411EC010@HE1PR0301MB2332.eurprd03.prod.outlook.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <a952209b-5a08-454f-91a2-74a33feaad2f@windriver.com>
Date: Fri, 14 Sep 2018 14:49:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <HE1PR0301MB2332FDB93B86A1BADB529411EC010@HE1PR0301MB2332.eurprd03.prod.outlook.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Using Dropbear - Core Image Sato
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
X-List-Received-Date: Fri, 14 Sep 2018 18:50:19 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 09/06/2018 07:58 AM, Ayman Hassan wrote:
> Hello,
> 
> I am part of a team based in Cairo, Egypt – working on a project and 
> we’re still discovering Linux Features, I am currently running 
>   core-image-sato on a virtual box, 

Welcome to yocto. If you have access to IRC,
you can join #oe on Freenode to ask for help as well.

> and trying to connect to SSH server 
> using Dropbear – but it’s not working – I get connection refused 
> message. I couldn’t find tutorials to know how I can fix the problem.
> 
Did you build your image for qemux86-64 instead and try to use runqemu?
As shown on:
 
https://www.yoctoproject.org/docs/current/brief-yoctoprojectqs/brief-yoctoprojectqs.html

That's a more common use case than VirtualBox in the Yocto community.

If you are determined to use VB:

Did you manage to ssh into say and ubuntu image running there?
If not, then you'll need VB docs not YP docs.

If ubuntu works for you, then what's your build environment, ssh client,
and branch of yocto:
   https://wiki.yoctoproject.org/wiki/Releases
?

../Randy

> I would really much appreciate your help.
> 
> Thank you,
> 
> Ayman ABDELHAMID
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

