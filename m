Return-Path: <felix.lelchuk@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ABECE00CAA; Mon, 29 Apr 2019 13:14:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (felix.lelchuk[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Apr 2019 13:14:37 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2002E00C78
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 13:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1556568876;
	bh=DFEVFqbJtSsXEDneMz/6aHqMPvj0nyqyHBVSH3MofwU=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=WbmGaWhhgKIcJz6Yrzm7s7jkpeTy1zXwr7AD5W/oIlrFfGiAk6JRuwE3N5C46vRYR
	1VTWlQ4lvufSkZgCaeOBZkbzZeU5k7QvxlxYiysLdVP1BflpazXLlXC9zApASfWX8v
	ujzkceG2M8nN3rQQAxiRh0zhPLMrXGXTHD4NrVyM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.37] ([83.135.195.23]) by mail.gmx.com (mrgmx104
	[212.227.17.168]) with ESMTPSA (Nemesis) id 1MrhQC-1gyGIE0nWm-00nl8D
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 22:09:34 +0200
To: yocto@yoctoproject.org
From: Felix Lelchuk <felix.lelchuk@gmx.de>
Message-ID: <d6ed7a18-da1b-592b-e4c2-58348047960a@gmx.de>
Date: Mon, 29 Apr 2019 22:09:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:hzoiVttCudwjv+4W3BRs3Tec5zQq/tZFVrCteOfmqRf+EIk92eQ
	wSvfD2wCcGQQFlnkfoUqX6eRWz+PsxsZgaLEDB/blCpgzPnw9wyfpVtszZ8uCjW8pUPAQG8
	vN1nnO2OW3HzzLtLqcUmtKLVPIvkKFREA/G5xUztwDhV/6O47viGEVm1bDpoUPHxMA/Dop8
	BJxVZ2vi6ejxTfwCvzP+w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:yWcMtQsr+r4=:iltOuST8+76LMBq0GgRw6j
	IZyIof59TOwwztJqAYOmwuEA5w80qFXCtB+T6IIy9DFvjaG1W8pz5NArCiyWUCdtKRb4tAbIa
	PpIYtu8Tbr9lv1KX12cb/SQVg1OJqzG1HfY5BI42v5/aainSSCrRpfUtkk2rHcwKh5xpxJCAw
	pWY6vVbnrvF7kDW7gRm9mGej56WbPUlMeZ6eOOQ1laFzzukKEFIl1Od1LvzgGyXo3SfBkOvWr
	AOVJlxkJc+iFnU7udt6v8dgV0bHvr+3UB9l8oiDibQeGljrMce7pKuXGxUghS0SEeM4sthOAg
	a1N8B0E2yBaPfoshPfYF2SbloDvki1m+Qn8j+njZW/1x34fAp25e+27fTwuP7gVgoxma2Ig/I
	GMkmFU+dcphfNQAAMiDNJezvRJ6UgC3wKnwaVZhvivJCx12omGOhTldHkz0c5XnxcV6/Q3k4h
	Paj76PMG3FTEUIcqwrQIo7HpWUMIImwaadSCsQjjsf6dc+LOvID/5SExD52qH6UCJDCMr+EQY
	mMZhd1ZwYdUCRm6yh7WJ5fmnbs3D3ZDoAVx6NL33z9Epl593JTtqKXxwVrxdXOS2dhcxhjuvI
	+m0Bemz0N4gHmXRm5BnRg/QxKgGqy14Ad0bfGuYzRXtHYk3upwIXTNo94WykAZzpxZxHfberM
	VXP46lk9zgZgHKT1BqDGD5ZqyTGs3p6PgtazJBugOYGKdC9OlVrNYSCaUsCH0NGbygwQuaVRY
	drIEbBsfsD45TfCh05v+aYtDEMj60V0lApLnwD6aODKIOc8y/nkS9UZpdIUeArqn8S5CJINRa
	7fsujKGxAR4SfGHfI4qF7cuTiVdgr/94ykFpud75JivHfu3PzIV0YXfGWEdW2mxUujRTkXu8D
	bwbMLgzAAvjR7qpNwQclZTI5n7SBqe668WVERPPjkUGh8TJ2JXmNQTv5tct/7EEz5TGhf/KPp
	wmWAm7O5hoA==
Subject: do_rootfs fails - corner case QA/heuristics?
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
X-List-Received-Date: Mon, 29 Apr 2019 20:14:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: de-DE

Hi,

I'm facing some strange problems trying to backport old 1.9 Ruby to Thud P=
oky.
All packages build fine but the image's do_rootfs fails with below message=
 and
without any image winding up in tmp/deploy/images/<machine>:

=2D-----------------------------------------------------------------------=
---------------------
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: my-image-1.0-r0 do_rootfs: [log_check] my-image: found 2 error mess=
ages in the logfile:
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPExpectationFailed
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPPreconditionFailed

ERROR: my-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: <image-workdir>/1.0-r0/temp/log.do_ro=
otfs.19421
ERROR: Task (my-image.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 7927 tasks of which 7800 didn't need to be =
rerun and 1 failed.
=2D-----------------------------------------------------------------------=
---------------------

I believe there are some QA-related heuristics in place which dislike the =
naming of the two=C2=A0mentioned files for they contain "Failed" in their =
filename.=C2=A0Unlike Thud, that used to work in Krogoth.

If this was a pure QA-warning I'd assume there is a switch to ignore it bu=
t it seems to be treated like an actual error.

I'd be glad to hear about the best way to proceed with this. Thank you!

Best Regards,

Felix Lelchuk


