Return-Path: <Qianjun.Zhang@alcatel-lucent.com>
Received: from cnshjsmin03.alcatel-sbell.com.cn
	(cnshjsmin03.alcatel-sbell.com.cn [211.144.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 146D7E01623
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 22:04:06 -0700 (PDT)
X-AuditID: ac189297-b7f1b6d000002f2e-5d-5243c0436cce
Received: from CNSHJCASHUB03.ad4.ad.alcatel.com (Unknown_Domain
	[135.251.50.73])
	by cnshjsmin03.alcatel-sbell.com.cn (Symantec Messaging Gateway) with
	SMTP id 2C.9F.12078.340C3425; Thu, 26 Sep 2013 13:04:03 +0800 (HKT)
Received: from CNSHJMBX02.ad4.ad.alcatel.com ([169.254.2.224]) by
	CNSHJCASHUB03.ad4.ad.alcatel.com ([135.251.50.73]) with mapi id
	14.03.0123.003; Thu, 26 Sep 2013 13:04:03 +0800
From: ZHANG Qianjun <Qianjun.Zhang@alcatel-lucent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: why alsa cannot be supported by libsdl
Thread-Index: Ac66ddGMVK9hsJR0TGqM6WGNmQudEg==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 26 Sep 2013 05:04:03 +0000
Message-ID: <29D7627EB179634FB9F1BA6EB7828B211C54A5@CNSHJMBX02.ad4.ad.alcatel.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: hec= Bqp6 CGNz CfGO E9S9 FDmo FM/u F9eR GM5f HKFu H6wj
	IwTw I2bI Juy4 KEEo
	KO+S; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {D44DAB04-2137-4C05-BD7F-771084FF89E7};
	cQBpAGEAbgBqAHUAbgAuAHoAaABhAG4AZwBAAGEAbABjAGEAdABlAGwALQBsAHUAYwBlAG4AdAAuAGMAbwBtAA==;
	Thu, 26 Sep 2013 05:04:01 GMT;
	UgBlAGMAYQBsAGwAOgAgAHcAaAB5ACAAYQBsAHMAYQAgAGMAYQBuAG4AbwB0ACAAYgBlACAAcwB1AHAAcABvAHIAdABlAGQAIABiAHkAIABsAGkAYgBzAGQAbAA=
x-cr-puzzleid: {D44DAB04-2137-4C05-BD7F-771084FF89E7}
x-originating-ip: [135.251.222.177]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsXS/ltRStf5gHOQweYPRhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV8WbaFuaC+IoT5/YwNjD6djFyckgImEgcOt/FCmGLSVy4t56t
	i5GLQ0jgDqNEw8XXLBDOVkaJm2/mMINUsQmYSfzc+pYFxBYRMJV4cewLG4gtLGAu0fTlCitE
	3ERiQ+sydghbT+LGnE1MEBuUJKauugMU5wCyJSX2TNCDCItKXD03CWwMi4CqRMfeT2A2r0CQ
	xN6F98FWMQrISlxt2QYWZxYQl7j1ZD7USAGJJXvOM8PMefn4HyvIzRICF5gldt3fC/WZqcT2
	S7sYIWxliYlTH7NADNKRWLD7E9RQbYllC18zQywWlDg58wkLRL2kxMEVN1gmMErOQrJ7FpL2
	WUjaZyFpX8DIsopRITmvOCOrODczz8BQLzEnObEkNUe3OCk1J0cvOT9XLzlvEyMwDtdITJq+
	g3HXfstDjAIcjEo8vA3BzkFCrIllxZW5hxglOJiVRHi/GQGFeFMSK6tSi/Lji0pzUosPMUpz
	sCiJ8z6wyQsUEkgHmp2dmlqQWgSTZeLglGpgnDNRl6Wu5tbi9QmLFsVe3Xe7fYWw3lmDSwKr
	t9x9yDXz3+7KVXU+ya3PffYz/dVtzUia6bq4LLJ8chHTzYNiv1dU8WmkaExo9r/t9nbmk5iS
	qVJzNvj37tyVlSsmfv/nrCm8teYS9wIepVWLdEalH6irLW+s/dXf+G1NxvH1M/418v7fuFVi
	txJLcUaioRZzUXEiAKC8hOu/AgAA
Subject: Recall: why alsa cannot be supported by libsdl
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
X-List-Received-Date: Thu, 26 Sep 2013 05:04:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

ZHANG Qianjun would like to recall the message, "why alsa cannot be support=
ed by libsdl".=

