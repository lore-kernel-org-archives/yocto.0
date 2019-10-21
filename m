Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B08C2E00DFE; Mon, 21 Oct 2019 09:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F2EE00E46
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:15:23 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9LGFIxB007594
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 21 Oct 2019 11:15:20 -0500
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1a68270af44d45f98e7a1c6d80a1f783@Kemp-ExMb1.woodward.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <1cb846bf-b74c-2c2f-11f0-9b927ea27b7a@kernel.crashing.org>
Date: Mon, 21 Oct 2019 11:15:18 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1a68270af44d45f98e7a1c6d80a1f783@Kemp-ExMb1.woodward.com>
Subject: Re: Useradd: crypted passwords longer than 8 characters
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
X-List-Received-Date: Mon, 21 Oct 2019 16:17:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Crypt the password yourself and pass it in to the adduser command.

--Mark

On 10/21/19 10:25 AM, Lukasz Zemla wrote:
> What is the best way in Yocto (warrior) to add crypted password to /etc/shadow during buildtime?
> 
> Using useradd.bbclass in a standard way we may add only passwords <= 8 characters.
> "-p" parameterr followed by the output of "openssl passwd -crypt pAsswOrd" works fine.
> 
> I thought that class may be cheated by providing after "-p" string returned by "openssl passwd -6 verylongpAsswOrd", but it does not work: the password in /etc/shadow file is truncated:
> 
> myuser:/D163GofCVEpMgZ.w2Ro3Z.b5S8XT1:18190:0:99999:7:::
> 
> Any suggestions?
> 
> Thank you in advance.
> Lukasz Zemla
> 
> ***
> The information in this email is confidential and intended solely for the individual or entity to whom it is addressed.  If you have received this email in error please notify the sender by return e-mail, delete this email, and refrain from any disclosure or action based on the information.
> ***
> 

