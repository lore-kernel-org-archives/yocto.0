Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DC3EE00D1B; Tue,  9 Aug 2016 06:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Aug 2016 06:46:23 PDT
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8A198E00ECF
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 06:46:23 -0700 (PDT)
Received: (qmail 29604 invoked by uid 1003); 9 Aug 2016 13:39:41 -0000
Received: from unknown (HELO ?192.168.6.168?)
	(philip@opensdr.com@107.19.189.108)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	9 Aug 2016 13:39:41 -0000
To: jags gediya <jags.gediya@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
References: <CAP3RZogR+2vLi6RZi+muT_R1V82KF7RcfAfYmRBC3cTJQ1XZsA@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <1abab03c-09df-8ee1-3472-d3219c225d1f@balister.org>
Date: Tue, 9 Aug 2016 09:39:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <CAP3RZogR+2vLi6RZi+muT_R1V82KF7RcfAfYmRBC3cTJQ1XZsA@mail.gmail.com>
Subject: Re: How to build yocto as a root user?
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
X-List-Received-Date: Tue, 09 Aug 2016 13:46:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/09/2016 09:32 AM, jags gediya wrote:
> I am facing issues while build yocto as root user on ubuntu 14.04.
> How can i build as a root user?

Do not do this, it is a terrible idea. Create a user account and build
there.

Philip

> 
> 
> 

