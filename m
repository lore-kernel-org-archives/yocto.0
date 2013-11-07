Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A2AE017FC
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 02:26:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2013 02:25:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,651,1378882800"; d="scan'208";a="429325809"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2013 02:25:52 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 7 Nov 2013 10:23:41 +0000
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.197]) by
	IRSMSX152.ger.corp.intel.com ([163.33.192.66]) with mapi id
	14.03.0123.003; Thu, 7 Nov 2013 10:23:40 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Toaster Alpha Release for dora-10.0.0
Thread-Index: AQHO26NtaUgzOoTtDEGYJ0CT/rj3hg==
Date: Thu, 7 Nov 2013 10:23:40 +0000
Message-ID: <CEA11A5E.368F8%belen.barros.pena@intel.com>
In-Reply-To: <CAMCfZKG7Of4MbTCM-2VPd9_Ka6Y2yMSxgQnR-g_4cpuAGLLOLQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.80]
MIME-Version: 1.0
Subject: Re: Toaster Alpha Release for dora-10.0.0
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
X-List-Received-Date: Thu, 07 Nov 2013 10:26:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B27DE52E8AD6B74FAFFA3BC37CA417C9@intel.com>
Content-Transfer-Encoding: quoted-printable

On 06/11/2013 23:41, "Diego Sueiro" <diego.sueiro@gmail.com> wrote:

>
>2013/11/6 Flanagan, Elizabeth <elizabeth.flanagan@intel.com>
>
>Please see the wiki on how to start the system.
>
>https://wiki.yoctoproject.org/wiki/Toaster#To_get_it_up_and_running:
>
>
>
>
>The sequence of commands mentions to stop toaster and then opens
>http://localhost:8000/, but if I do that the service is not available.
>So, I believe that the sequence must be:
>
>* to see the web interface: xdg-open http://localhost:8000/
>
>* to stop Toaster: source
> toaster stop

Indeed. I've changed the order as suggested.

Thanks!

Bel=E9n

>
>
>
>Regards,
>
>
>--
>*dS
>Diego Sueiro
>
>/*long live rock 'n roll*/
>
>
>


