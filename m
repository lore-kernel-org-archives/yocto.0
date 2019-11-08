Return-Path: <jean-marie.lemetayer@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABF2FE00E02; Fri,  8 Nov 2019 01:59:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24E3BE00B65
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 01:59:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 64A999C0279;
	Fri,  8 Nov 2019 04:59:38 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id GlhCcol6GjJw; Fri,  8 Nov 2019 04:59:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id F2B079C0280;
	Fri,  8 Nov 2019 04:59:36 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id QHk-TDMrKirD; Fri,  8 Nov 2019 04:59:36 -0500 (EST)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D4A0F9C0279;
	Fri,  8 Nov 2019 04:59:36 -0500 (EST)
Date: Fri, 8 Nov 2019 04:59:36 -0500 (EST)
From: Jean-Marie LEMETAYER <jean-marie.lemetayer@savoirfairelinux.com>
To: Jonas Andersson <jonaskgandersson@gmail.com>
Message-ID: <1539153415.198257.1573207176806.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <1380694921.198183.1573206406105.JavaMail.zimbra@savoirfairelinux.com>
References: <CAKpuFddfD5SSeqXXPGP9jYC7Ha94R0XF30uRobkfQcaaeBRzMg@mail.gmail.com>
	<1380694921.198183.1573206406105.JavaMail.zimbra@savoirfairelinux.com>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC78 (Linux)/8.8.11_GA_3737)
Thread-Topic: nodejs npm qemux86_64
Thread-Index: pXDO1ZmIexJGmF/uuxOOidhnrEJGzty4YJ0B
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: nodejs npm qemux86_64
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
X-List-Received-Date: Fri, 08 Nov 2019 09:59:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Actually I just update my patchset to use ${nonarch_libdir} instead of ${libdir}.

This will be on the next patchset version.

For your information you can check the meta/conf/bitbake.conf file for others target filesystem paths.

Best regards,
Jean-Marie

On Nov 8, 2019, at 10:46 AM, Jean-Marie LEMETAYER jean-marie.lemetayer@savoirfairelinux.com wrote:
> Hi Jonas,
> 
> I am currently refactoring / updating the npm handling in Yocto:
> http://lists.openembedded.org/pipermail/openembedded-core/2019-October/288352.html
> http://lists.openembedded.org/pipermail/bitbake-devel/2019-October/020449.html
> 
> Your point is very interesting, I will take it into account for the next
> patchset version.
> 
> Best regards,
> Jean-Marie
> 
> On Nov 7, 2019, at 10:56 PM, Jonas Andersson jonaskgandersson@gmail.com wrote:
>> Hi,
>> 
>> I have installation problems for npm recipes.
>> Using Yocto thud and machine=qemux86_64(wrlinux-x), but as I can see it this
>> concerns all
>> use of npm.bbclass for 64-bits system.
>> 
>> The problem seems to be the use of ${libdir} in npm.bbclass, when 64 bit is used
>> this expands to lib64.
>> npm install --prefix ${D}${prefix} installs to /usr/lib/node_modules which is
>> not
>> in sync with the following mv ${D}${libdir}/node_modules ${D}${libdir}/node.
>> 
>> I made an quick fix by replacing ${libdir} by ${prefix}/lib/, but as I see it
>> nodejs packages never is installed to lib64 in any other system as I can find
>> information about.
>> 
>> So the question is if the use of ${libdir} is bad and the path should always be
>> to /lib/?
>> 
>> Best regards
>> Jonas

