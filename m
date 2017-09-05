Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76581E00C09; Tue,  5 Sep 2017 15:19:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13A5E009F5
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 15:19:25 -0700 (PDT)
Received: (qmail 30581 invoked by uid 1003); 5 Sep 2017 22:19:25 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.44.111.57)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	5 Sep 2017 22:19:25 -0000
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E98CBD645@fmsmsx111.amr.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <433794e5-211f-902a-5e93-c2a75b0ac419@balister.org>
Date: Tue, 5 Sep 2017 18:19:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E98CBD645@fmsmsx111.amr.corp.intel.com>
Subject: =?UTF-8?B?UmU6IFlvY3RvIFByb2plY3QgU3RhdHVzIFdXMzXigJkxNw==?=
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
X-List-Received-Date: Tue, 05 Sep 2017 22:19:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

And do not forget the OpenEmbedded Developer Meeting in Prague before ELCE:

https://www.openembedded.org/wiki/OEDEM_2017

Philip

On 08/28/2017 10:42 AM, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.4 M3
> 
> Next Deadline: YP 2.4 M3 (In QA)
> 
> 
> SWAT team rotation: Paul -> Todor on Aug. 25, 2017.
> 
> SWAT team rotation: Todor -> Tracy on Aug. 18, 2017.
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
> 
> 
> Key Status/Updates:
> 
> ·        We’ve reached feature freeze for 2.4 and the M3 rc1 build is in QA.  See: https://wiki.yoctoproject.org/wiki/2.4_QA_Status
> 
> ·        Some things did not make 2.4. In particular, the python manifest rework didn’t, nor did the multiple kernels work or the switch to pkgconf by default. These patchsets were too late in the cycle and potentially caused too many issues. I’ve started queueing some things on master-next-2.5 in the meantime.
> 
> ·        We’ve continued to struggle with various autobuilder reported failures although current master appears to be working better than we’ve had things for a while.
> 
> ·        Some fixes were merged for the bitbake server reconnection issues and this should remove the traceback many people were seeing and generally clean up some of the behavior for reconnections.
> 
> ·        There were some staging.bbclass fixes that have recently merged which allow the system to cope much better with changing things like the pkgconfig provider.
> 
> 
> Planned upcoming dot releases:
> 
> YP 2.2.2 Cut off June 5, 2017 - Not ready to do an rc2 yet.
> 
> YP 2.2.2 Release by June, 16 2017
> 
> YP 2.3.2 Cut off Sept. 1, 2017
> 
> YP 2.3.2 Release by Sept. 15, 2017
> 
> 
> Key YP 2.4 Dates are:
> 
> YP 2.4 M3 Cut off is Aug. 21, 2017 (In QA)
> 
> YP 2.4 M3 Release by Sept. 1, 2017
> 
> YP 2.4 M4 (Final) Cut off is Sept. 18, 2017
> 
> YP 2.4 M4 (Final) Release by Oct. 20, 2017
> 
> 
> Tracking Metrics:
> 
>             WDD 2504 (last week 2476)
> 
> (https://wiki.yoctoproject.org/charts/combo.html)
> 
> 
> Key Status Links for YP:
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.4_Status
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.4_Schedule
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.4_Features
> 
> 
> [If anyone has suggestions for other information you’d like to see on this weekly status update, let us know!]
> 
> 
> Thanks,
> 
> Stephen K. Jolley
> Yocto Project Program Manager
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
> •   Work Telephone:        (503) 712-0534
> •    Cell:               (208) 244-4460
> • Email:                          stephen.k.jolley@intel.com
> 
> 
> 
> 

