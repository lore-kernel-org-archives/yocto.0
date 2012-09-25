Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DADCFE00344
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 11:08:03 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TGZYB-000PiF-6O; Tue, 25 Sep 2012 18:08:03 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8PI7wlI012190
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Tue, 25 Sep 2012 13:07:59 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1+WI+tNwo5A1f2m4VQ5ucHGLiVYDTIfLMY=
Message-ID: <1348596474.2846.0.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Tue, 25 Sep 2012 13:07:54 -0500
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A243@ORSMSX101.amr.corp.intel.com>
References: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
	<CAJTo0LYJbHkqwAyYnf3ccvKBhkBX1a+rhH6dY8SPeNqyGajcZQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A243@ORSMSX101.amr.corp.intel.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documentation clarification
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
X-List-Received-Date: Tue, 25 Sep 2012 18:08:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Still need that bug for tracking purposes or is this OBE?

Brian

On Tue, 2012-09-25 at 17:11 +0000, Rifenbark, Scott M wrote:
> This has been fixed.  See http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html#var-KERNEL_FEATURES
> 
> Thanks, 
> Scott
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Burton, Ross
> Sent: Tuesday, September 25, 2012 10:00 AM
> To: Brian Lloyd
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Documentation clarification
> 
> On 25 September 2012 17:55, Brian Lloyd <blloyd@familyhonor.net> wrote:
> > should
> > KERNEL_FEATURES_append_qemux86="cfg/sound"
> > have a space between the " and c?
> 
> Yes.  Please do file a bug.
> 
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 



