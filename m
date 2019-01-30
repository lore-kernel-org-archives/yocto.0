Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11664E00D12; Tue, 29 Jan 2019 21:57:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.155 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout2.han.skanova.net (v-smtpout2.han.skanova.net
	[81.236.60.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01037E00CDF
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 21:57:52 -0800 (PST)
Received: from [90.236.3.187] ([90.236.3.187]) by cmsmtp with ESMTPA
	id oisgg7SqmX7EQoishgntih; Wed, 30 Jan 2019 06:57:51 +0100
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 30 Jan 2019 06:57:48 +0100
Message-Id: <A5554250-13C3-406D-91BB-52CF70C5984B@emagii.com>
References: <AF3F4FB0-8E53-425B-8C73-4ADEB79A1601@emagii.com>
To: Yocto Mailing List <yocto@yoctoproject.org>
X-Mailer: iPad Mail (15F79)
X-CMAE-Envelope: MS4wfIexVykK0j8Le486dmo9WhUx3oTaXVUL8jLzsBiwheSMjVyhPBDuFsR/PuIKtnNq1uqICIA3lBJUY2C/Xjous4ybGWZlLQAo0s6m3EJDleV9YiL+jCRW
	ayXT9VXa2JjJli09xgcXuvmKixdVmsB+G7NAMPpabmoA8w5YUPCNik6i
Subject: adding task before a task T but after all other tasks that T depends on?
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
X-List-Received-Date: Wed, 30 Jan 2019 05:57:55 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is there a way to express this?

Assume three classes X,Y,Z, each adding a task.
X: addtask x after S before T
Y: addtask y after S before T
Z: addtask w after S before T

Images might inherit one of the classes X,Y,Z.
Thus x, y, or z might run, but only one of them, and which depends on the im=
age I build.

How do I add a task z, which runs after any of x,y,z, but before T?

The list of possible tasks might be extended in the future, so I really woul=
d want to
specify:  =E2=80=9Daddtask w after T[depends] before T=E2=80=9D or similar.

Best Regards,
Ulf Samuelsson=


