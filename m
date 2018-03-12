Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067A5E00A61; Mon, 12 Mar 2018 00:32:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3097AE00843
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 00:32:16 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs80.server.lan (via HTTP); Mon, 12 Mar 2018 08:32:16 +0100
MIME-Version: 1.0
Message-ID: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
From: "Arno Steffens" <star@gmx.li>
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2018 08:32:16 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:kGFmPi3dCgVWZ+8DfuGf4fLEE3xTBrA1Aa2xwB6Zstr
	/Cuu7DpLK2ywvpUJ+yuvmxS59KLVmh/JL2rM5B9Gco2IvX+IYE
	cbUhmv9Sdy25ftbN7dfoxbRdybglws+FKZN4X4No2AY8L4b4K7
	3RQRY5BxqHAOTLBc3QVOSADOupHNke6FaucgKtMDVsm5pDE8Iv
	xyskpP1kD8j81BQJmrG5sAv6emBks7cV4Twq7l4G1OZMOWTHrM
	rPy5U+spBoJhm3/d7ngNcWalOpLtN5W4C3Ib3XPzMLaRdG1pgS yYzb00=
X-UI-Out-Filterresults: notjunk:1;V01:K0:HxwmnvCLBPE=:pJFjzNmjN7WCSVedDonRqB
	GAPXzBEpPapYtt8yQnub6zN/VhuyD5RUsxZmzEhezqXRqmUPihs6dFfjvvvoECNr9o1pJ66lZ
	34fexLP1cCDKYAPMzu9V9XEu9KdQyLIUaZml6h6KO6gKvwxFCSzREllBRKIsC3BdiBA+6fT25
	8/lf4yfH4OFT07cQIvxJHQDeYhKLWlZireFI6QTrJWanUdMmp/kqtlQazTZiUXiGGxx0aCMhH
	4Uc45Ui5Dl+E55xkwW2KPUusPLYpX4qJDvccZsSCSm+ZU9o3PPC8i00fXeLqORJPYjkU+cDRt
	9+4hMpVzHVB8YljXQN3OTAe5DaDaZMRXCRFjRuunm3rlu3GIyM+Jg8WihEitbp/AUX15p7YQw
	WWO/1funC1Vf6tJahQ6x/JzjTzhVdWX4UGzG530l3eZ0JQQPy6ViSNiA0Su3le1XTccWlP3wS
	dUqb7H03GiYafukdztUOPxMOEeCsElD6EX+Dfj9sLWH9swBRAh3L
Subject: O_RDONLY ... missed bits/fcntl.h not as expected
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
X-List-Received-Date: Mon, 12 Mar 2018 07:32:18 -0000
Content-Type: text/plain; charset=UTF-8

I looked for 
#define O_RDONLY	     00
#define O_WRONLY	     01
#define O_RDWR		     02
and found it in : bits/fcntl-linux.h. According to this file it should not be included, but bits/fcntl.h.
And it requires something like that:

  A minimal <bits/fcntl.h> contains just: 
   struct flock {...} 
   #ifdef __USE_LARGEFILE64 
   struct flock64 {...} 
   #endif 
   #include <bits/fcntl-linux.h> 



But this doesn't finally include the fcntl-linux.h as expected. Am I doing something wrong?
Regards
Arno




