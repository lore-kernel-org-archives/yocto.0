Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC947E00D7B; Fri,  2 Feb 2018 04:16:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39062E00CE8
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 04:16:51 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0Lyh3D-1elmyL29vL-0166on
	for <yocto@yoctoproject.org>; Fri, 02 Feb 2018 13:16:50 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Feb 2018 12:16:53 -0000
Organization: LN Systems Limited
Message-ID: <05b001d39c1f$b673d4c0$235b7e40$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdOcH3Sg22gjDhGMSY+PD/zHonQcAw==
X-Provags-ID: V03:K0:xtEw+d/pLGH2+U4HxseUiEP845PuEy61/et5xIvUixMKTHtu66/
	RclD10mCunwp93mNq3E12sqThieSwDJ4X99aLH2WWWt6anCgXMLk/2N5uwUCZAJ4Ws2v/NJ
	iGNNuI8Ww0lTAVcR93i5+2Ozm/CLsKy3dTaMJ0RJlcq8xLIBBRXgDGuVCWFCn8YK9h3wlZQ
	AHLdit53+/ASN9OzdC7HQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Z6WHbFPoRHk=:K9+HllqnngXdhDDV+SD56C
	8OXP0vwQu4MV2UfxLJv7QPqP+7dU810JhGaqo8rrjAIaL27FBmqj61VrGQQKKQRvxeSXoRgUJ
	q5z3av+zPuNbLQeIEx8aFt2Jc7FzqIUO6iYI5TYOTVH0mIoljkRnDnCOrPvsXOqIzn7isaRhk
	p5zZXAqOrrrH21oEclsTdN42tJJM8kPB6cZcUf9v4nsOda7m7gW6EKuFqYV8Z+nOjexYyOApb
	U/DQyi9A64R3piCY/yxTDztgYTCbnPm1mZgsWjP3Al9V2JXhDo9COXcsL1vD3xLl7zpZPn1Lu
	noBXxD4+RIf+IkJqGQ3vgBv30Z5l7t+YvqD+FpZp0yTDngYv98uSIetaAz4bqVxwyBcI8tOKo
	a3Vd5gJxXimCMJWjTZ6UdLopH8fiUzaaYFTTxPTJdt9fdsNqonsXuZ8UqixyCyX8ySmrfCIAy
	RbeWWRncIGKz5qtsUErNBFHLC7H5PlQXVouvjKjxjP7J4BMUyqenGKvRzmwG2n1SgocmWy0ux
	FCiwKEFNd5RWdm5IEw4q25fxb9SdmcJI9iCxaH5CB4Vm8uB1nPjHo7PfUg8Dgi72yeSS5Br1u
	fSpkmIekxpyd+48pgbCw/68tkW2Ng8jlkmS8TuejH98MgBzOegS4MCb13BSaMTm1do8lc4CHk
	IoSjUTNLQy6jqnJ1Quhk1t4lkvm3t8xOAjdp3Z8fsc3F43+DGWiA5SBvQMKbZFptLWzqteWDh
	pPus1NiY9DLLWhMi2J+/G/6n92orteO3xsPl3hVWB9jQIQcqh9eYCJB0GJE=
Subject: Getting a recipe's files from within an image recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Feb 2018 12:16:53 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I have an app which has a config file, and I'd like my two images
(production and dev) to have different configs. Obviously it'd be neater to
keep the two config files within the recipe's directory structure.
I guess I can't do this in the app's recipe since it has no concept of what
image it might end up in. So I could have the the app's recipe deploy one of
the configs by default, and use a step in the 'other' image recipe to
overwrite it.
But is there a way to tell the image recipe where the app's workdir/srcdir
is? Something like ${WORKDIR}_MyRecipe
Or am I just going to have to hard-code the path in?



