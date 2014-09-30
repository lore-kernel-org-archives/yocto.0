Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2712AE0084E; Tue, 30 Sep 2014 00:53:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B9AE006DB
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 00:53:14 -0700 (PDT)
Received: from [109.224.171.0] (port=65119
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XYsFA-003ITT-D7; Tue, 30 Sep 2014 08:53:10 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LY=A-dj2VZU3iP_R=SVSHYsV+fXgrPUnfFz62FPEFgaOA@mail.gmail.com>
Date: Tue, 30 Sep 2014 08:53:08 +0100
Message-Id: <E882175C-A206-42C7-96CB-FA54E0AC8A9D@keylevel.com>
References: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
	<CAJTo0LY=A-dj2VZU3iP_R=SVSHYsV+fXgrPUnfFz62FPEFgaOA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Fetcher question
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
X-List-Received-Date: Tue, 30 Sep 2014 07:53:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 29 Sep 2014, at 22:59, Burton, Ross <ross.burton@intel.com> wrote:

> On 29 September 2014 22:36, Chris Tapp <opensource@keylevel.com> =
wrote:
>> How would the fetcher handle the file changing after it had already =
been downloaded and passed a checksum test? Would the change have been =
detected?
>=20
> The checksum comparison is only done at fetch.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5571 talks about
> extending that to verify the checksums at do_unpack() to catch
> situations like this.

I'm not sure this is quite the same - in this case the (downloaded) file =
and checksum would have matched but the remote file has changed.

I don't think there's a lot that can be done about this other than try =
and persuade people not to change published files ;-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


