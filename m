Return-Path: <Michael_E_Brown@dell.com>
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A64C4E0054C
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2011 08:08:50 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@dell.com>
To: Marc Ferland <marc.ferland@gmail.com>
Date: Fri, 02 Dec 2011 10:08:51 -0600
In-Reply-To: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
References: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1322842131.2418.21.camel@duo>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding line to ld.so.conf
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
X-List-Received-Date: Fri, 02 Dec 2011 16:08:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-21 at 09:35 -0600, Marc Ferland wrote:
> Hi,
> 
> What's the proper way to add a line to the ld.so.conf file for a new
> library I am adding?

Does yocto support /etc/ld.so.conf.d/ (like every other distro out there
from the past 7 years or so?)

You could just drop a file into that directory with the lines you want
rather than editing the global file.
--
Michael


