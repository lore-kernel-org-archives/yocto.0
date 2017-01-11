Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CDC7E0049A; Wed, 11 Jan 2017 09:46:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B8BE003C1
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 09:46:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0BHkeLI013499
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2017 09:46:40 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 11 Jan 2017 09:46:40 -0800
To: Philip Balister <philip@balister.org>, Bent Bisballe Nyeng
	<xbbn@mjolner.dk>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<bbffbd48-0944-ccde-e7dd-5a912aea4dd8@linux.intel.com>
	<e9802d68dc1240a2ae137c424a154d8a@drift35.mia.local>
	<CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
	<1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
	<300aed1d-93fe-7d21-2436-172e7d35e728@balister.org>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <455a3bfe-5329-5ea0-a908-cabc640daa57@windriver.com>
Date: Wed, 11 Jan 2017 11:46:39 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <300aed1d-93fe-7d21-2436-172e7d35e728@balister.org>
Subject: Re: how does one stay on top of YP security alerts?
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
X-List-Received-Date: Wed, 11 Jan 2017 17:46:52 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 1/11/17 8:49 AM, Philip Balister wrote:
> The question of security comes up at every OpenEmbedded developer
> meeting. Clearly, the companies building products with OpenEmbedded care
> about security.
> 
> The problem following the CVE's direct is you need to do analysis to
> determine if a specific release has the vulnerability.
> 
> We do have guidelines for marking CVE's addressed by commits, to help
> people interested in developing tools to show what CVE's are addressed
> in the meta data.
> 
> One suggestion made is to setup some form of git hook to email commits
> with CVE tags to the security list. We are very interested in
> encouraging people who care about security to use the security mailing
> list to improve overall security of distributions (like Poky) built with
> OpenEmbedded.

We started looking into having a git hook that would email the list whenever a
commit (with the CVE tag in it) was present, but with holidays (and other work
items I had).. this of course dropped lower in the priority list.

I do think this is the only reasonable way to do this.  Use an individual
branch's commit information to discover what is fixed.

If it's not listed as fixed, it's the users responsibility to understand if they
are vulnerable, deal with the vulnerability and (hopefully) send the patch to
the mailing lists so others can benefit from it.

(Speaking as a commercial OSV for a second)  The latest step of triage, fix and
send -- as well as announcing to customers and documenting things that are NOT
vulnerable are all services we provide.  I would expect any commercial OSV to
provide a similar service for their customers.  This is certainly a 'value-add'
that we do above and beyond the open source community.

This really is an 'above and beyond' request for the community.  The community
only cares about what HAS been fixed and the in-progress development release.
Anything beyond that is best effort, and the Yocto Project compliance guidelines
(and related process, encouraging contributions) helps keep commercial OSVs (who
do this work anyway) involved with keeping the community up to date.

--Mark

> Philip
> 
> On 01/10/2017 05:37 AM, Bent Bisballe Nyeng wrote:
>> On 01/10/2017 11:29 AM, Burton, Ross wrote:
>>
>> On 10 January 2017 at 10:01, Bent Bisballe Nyeng <xbbn@mjolner.dk<mailto:xbbn@mjolner.dk>> wrote:
>> So /is/ the yocto-security mailinglist considered "dead"? Or has there
>> simply not been any security issues for a while?
>>
>> IIRC, yocto-security was more to discuss security issues, not an announcement of security related fixes.  If you care about security then you'll want notice for more than just what is in oe-core, so I suggest monitoring the CVE announcements directly.
>>
>> Ross
>>
>> I found the list initially through this page: https://wiki.yoctoproject.org/wiki/Security where it is described as the security [at] yoctoprojct [dot] org being the discussion list and the yocto [dash] security [at] yoctoproject[dot] org being the security announcement list.
>>
>> If the yocto [dash] security [at] yoctoproject[dot] org is in fact no longer active I think it is important that the wiki page is changed to reflect that to prevent potential dangerous misunderstandings in the future.
>>
>> Kind regards
>> Bent Bisballe Nyeng
>>
>>
>>


