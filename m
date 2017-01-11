Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98251E007AA; Wed, 11 Jan 2017 06:49:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7285EE0033D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 06:49:51 -0800 (PST)
Received: (qmail 28547 invoked by uid 1003); 11 Jan 2017 14:49:50 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.4.175.67)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	11 Jan 2017 14:49:50 -0000
To: Bent Bisballe Nyeng <xbbn@mjolner.dk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<bbffbd48-0944-ccde-e7dd-5a912aea4dd8@linux.intel.com>
	<e9802d68dc1240a2ae137c424a154d8a@drift35.mia.local>
	<CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
	<1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
From: Philip Balister <philip@balister.org>
Message-ID: <300aed1d-93fe-7d21-2436-172e7d35e728@balister.org>
Date: Wed, 11 Jan 2017 09:49:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1c32c82c773d4d0b81f428bc62435118@drift35.mia.local>
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
X-List-Received-Date: Wed, 11 Jan 2017 14:49:54 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

The question of security comes up at every OpenEmbedded developer
meeting. Clearly, the companies building products with OpenEmbedded care
about security.

The problem following the CVE's direct is you need to do analysis to
determine if a specific release has the vulnerability.

We do have guidelines for marking CVE's addressed by commits, to help
people interested in developing tools to show what CVE's are addressed
in the meta data.

One suggestion made is to setup some form of git hook to email commits
with CVE tags to the security list. We are very interested in
encouraging people who care about security to use the security mailing
list to improve overall security of distributions (like Poky) built with
OpenEmbedded.

Philip

On 01/10/2017 05:37 AM, Bent Bisballe Nyeng wrote:
> On 01/10/2017 11:29 AM, Burton, Ross wrote:
> 
> On 10 January 2017 at 10:01, Bent Bisballe Nyeng <xbbn@mjolner.dk<mailto:xbbn@mjolner.dk>> wrote:
> So /is/ the yocto-security mailinglist considered "dead"? Or has there
> simply not been any security issues for a while?
> 
> IIRC, yocto-security was more to discuss security issues, not an announcement of security related fixes.  If you care about security then you'll want notice for more than just what is in oe-core, so I suggest monitoring the CVE announcements directly.
> 
> Ross
> 
> I found the list initially through this page: https://wiki.yoctoproject.org/wiki/Security where it is described as the security [at] yoctoprojct [dot] org being the discussion list and the yocto [dash] security [at] yoctoproject[dot] org being the security announcement list.
> 
> If the yocto [dash] security [at] yoctoproject[dot] org is in fact no longer active I think it is important that the wiki page is changed to reflect that to prevent potential dangerous misunderstandings in the future.
> 
> Kind regards
> Bent Bisballe Nyeng
> 
> 
> 

