Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 915E9E009BB; Thu, 14 May 2015 14:39:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [67.195.87.241 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm50-vm1.bullet.mail.gq1.yahoo.com
	(nm50-vm1.bullet.mail.gq1.yahoo.com [67.195.87.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99D93E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 14:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1431639580; bh=X3t0qpCSlNOXCXhsBAUjJgXB+KKWXSuKTW+65fxQXss=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=bzv9gohZNjCf7Ug44d0Cfn5aRabuggCLk8uS9Qhnzt6HUPB6uuF9oF3h4S/joKS/Wvl02ckKYuH0g2M+9g4ydAU1zbev2IQD8G5utfrbJATqAAEUAx4wpMucprLut5f7xgCHpG8lDBd4Cg2CDtEjbbj4uwSUogtA0T4/HxPfa3k3PwSw8av/PpLlgclhV807/F6Gl2tDElOwRIFiZbMe8A7CndDOn+f9k3bcu+sCMVz6/4npBMuhxKUlW7ibp+ZeeFAfsO9NXOZBZEdQOlfpzbEbpBfFjT6rHIDV+DxldfEFbJH3SD+0wKrBjF+WD2ZbQ5BpgFwJWqM4KZoQt+qDSg==
Received: from [127.0.0.1] by nm50.bullet.mail.gq1.yahoo.com with NNFMP;
	14 May 2015 21:39:40 -0000
Received: from [216.39.60.183] by nm50.bullet.mail.gq1.yahoo.com with NNFMP;
	14 May 2015 21:36:40 -0000
Received: from [212.82.98.50] by tm19.bullet.mail.gq1.yahoo.com with NNFMP;
	14 May 2015 21:36:40 -0000
Received: from [212.82.98.96] by tm3.bullet.mail.ir2.yahoo.com with NNFMP;
	14 May 2015 21:36:40 -0000
Received: from [127.0.0.1] by omp1033.mail.ir2.yahoo.com with NNFMP;
	14 May 2015 21:36:40 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 304912.86767.bm@omp1033.mail.ir2.yahoo.com
X-YMail-OSG: fE8NZ5UVM1kaZmpXcqMzYaJu1rdTiHaTw1cU0ot1g2Tsv_E7ny1aV7DS7raYc_r
	B5sZ192b28Irifu.PzZHSxZsayhE55wEOK41tS0ZD8bvQZCKyodzRox_NlHkS.OjH7S9vSGU1_a0
	0HRlQ2KpVeFc_fhbRTYwyv1c8ppYCEo3MOSppx5VPiDT28UnXsCuG2ePp.2dNvvNtG3fEDFGIA_q
	28iFP8lpqLqzI3RdVoDE3kBSgRHCwByEHk4tKNdkpg.sY5ESYVJUeyaeq3WB1_4ATwo0Rt1NQAHD
	gQdqLesztAVsLDvInsspzah2.iyceEFSLRjAOqK.XRMfxz3Xjuk8jl.sPl4d.HMz09rEYPJbMGUk
	GuLqJS0YHmHQMiDcQs9QY4gYM.iagZxXYV2ebBFojmQZMSUJ7bOjcUfvXHypnUwFm5b1ch1rYF6k
	nZPjer1CQ1p.popYVSgL7FeL1rLUrXR2dNEV3Kk0ng8jKPCV12qEYmDwVmKDqNzKXIZCIiAtIrSV
	h9RBz34ZCx3bo
Received: by 212.82.98.120; Thu, 14 May 2015 21:36:39 +0000 
Date: Thu, 14 May 2015 21:36:31 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <675480183.3559858.1431639391019.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
References: <1622249.AcBk4fCPKl@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: recipe removing (some)contents of /etc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 May 2015 21:39:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> What image are you building?

it is a Freescale iMX6 target, the image name is exactly a fsl-image-qt5 wi=
th a playground layer

>> You should probably use this line instead
>>    CORE_IMAGE_EXTRA_INSTALL =3D "canlogger"

>> There is CORE_IMAGE_EXTRA_INSTALL though which you can add to with +=3D =
(since=20
>> there aren't any default items in it, unlike IMAGE_INSTALL).


My understanding these are the preferred options

> > > IMAGE_INSTALL_append =3D =E2=80=9C canlogger=E2=80=9D

But would this still do? (just for my self-learning)

I have other recipes(not *.bbappend) which end up in the image without addi=
ng any explicit statement, just the fact of being part of the layer include=
s them, is there any explanation?

I am still missing something to get the whole picture...

Thanks a lot for the detailed explanations
best Regards
Oliver

