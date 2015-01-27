Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F2DCE02DA4; Tue, 27 Jan 2015 12:24:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.116.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from BLU004-OMC3S26.hotmail.com (blu004-omc3s26.hotmail.com
	[65.55.116.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09EB7E02CDF
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 12:24:13 -0800 (PST)
Received: from BLU436-SMTP194 ([65.55.116.72]) by BLU004-OMC3S26.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Tue, 27 Jan 2015 12:24:12 -0800
X-TMN: [xTMbrzQEeMAQPBdHQZkt3jmfFvqi7hqT]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
From: James Abernathy <jfabernathy@outlook.com>
Date: Tue, 27 Jan 2015 15:24:09 -0500
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 27 Jan 2015 20:24:10.0686 (UTC)
	FILETIME=[357C3DE0:01D03A6F]
Subject: adding meta-oracle-java
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
X-List-Received-Date: Tue, 27 Jan 2015 20:24:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In looking at the meta-oracle-java README, I see the notes about adding =
the License statement and switching to .deb packaging.  With that done, =
I get a clean build, but my image boots and I can=E2=80=99t see any =
evidence that java was included.

What am I missing.

I have a web app server that in all inclusive and can be setup just by =
running =E2=80=9Cjava -jar xxxx.jar=E2=80=9D.  But can=E2=80=99t run it =
without java installed.

Jim A


