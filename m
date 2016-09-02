Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E1F1E00E7A; Fri,  2 Sep 2016 00:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E2EE00E41
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 00:51:14 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u827pA5q005157
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 2 Sep 2016 10:51:11 +0300
To: yocto@yoctoproject.org
References: <a32fef25-dfed-2e61-1a38-e79063078062@vitheia.com>
	<704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
	<e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
	<706ab63f-2747-a14f-1ce6-dab3c1accbfc@windriver.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <1b067ad8-be70-c4ff-1e85-96967cb578a8@vitheia.com>
Date: Fri, 2 Sep 2016 10:51:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <706ab63f-2747-a14f-1ce6-dab3c1accbfc@windriver.com>
Subject: Re: custom linux kernel recipe
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
X-List-Received-Date: Fri, 02 Sep 2016 07:51:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bruce,

Do you have any new input in regards with qemuarm booting with kernel 
4.7.2 LTS ?
Have you managed to test this ?
I wander if this can be reproduce elsewhere and what's the solution for it.

Thanks
Mircea

On 08/30/2016 06:09 PM, Bruce Ashfield wrote:
>
> I'm finishing up 4.8 today, but without doing a boot test, I can't say
> for sure. I'll see if I can cycle in some korg 4.7.x testing tomorrow to
> see if I can get a clean boot.


