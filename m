Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB0094C802F2
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 18:24:54 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2MNOrVq010515
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Mar 2011 16:24:53 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 22 Mar 2011 16:24:53 -0700
Message-ID: <4D892FC3.1010306@windriver.com>
Date: Tue, 22 Mar 2011 18:24:51 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Jeremy Puhlman <jpuhlman@gmail.com>
References: <C9AE1F25.3EB2F%madison@cisco.com>
	<4D88D2D0.7050202@windriver.com> <4D88D5F6.4020306@gmail.com>
In-Reply-To: <4D88D5F6.4020306@gmail.com>
X-Originating-IP: [172.25.36.233]
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Mar 2011 23:24:55 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/22/11 12:01 PM, Jeremy Puhlman wrote:
> On 3/22/2011 9:48 AM, Mark Hatle wrote:
>> On 3/22/11 11:40 AM, Matt Madison wrote:
>>> Hi,
>>>
>> I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which I do
>> not have root access.
>>
>> For me I was able to simply provide an update python, some additional tools and
>> it worked.  (Note, I haven't tried it in the last 2 months though, so something
>> may have broken since then.)
> 
> I have noticed of late, pseudo's definition of clone conflicts with my
> RHEL 4's definition of clone. Aside
> from that I haven't noticed any significant issues.

semantics of clone changed between RHEL 4 and RHEL 5.  :(

The newer version of pseudo (upstream, not yet in Poky) fixes this issue.

It's still in development, so I wouldn't consider it stable yet -- but the
reworking of the utility directories is what was needed to identify the differences.

--Mark

