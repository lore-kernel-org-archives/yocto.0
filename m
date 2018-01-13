Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E1EBE00CE2; Sat, 13 Jan 2018 09:12:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Sat, 13 Jan 2018 09:12:09 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 059AEE00B1A
	for <yocto@yoctoproject.org>; Sat, 13 Jan 2018 09:12:09 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue103
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0LwXB1-1evAtq1jDj-018G85
	for <yocto@yoctoproject.org>; Sat, 13 Jan 2018 18:07:05 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Sat, 13 Jan 2018 17:07:04 -0000
Organization: LN Systems Limited
Message-ID: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdOMkNjBYpPKQhr3TwWjQPQMZAShBA==
X-Provags-ID: V03:K0:nvGrpKWWf/s4ZVKSFetP5pFcan59J9vCExKPurjdBsgh8GijLUs
	JKjiUYKKaZScEBdu60vMs6+gNxiJQdtQBtZOix7oJueNf2zSZkvGGFxz5IMzoHXXsuNlMAg
	DqZLGwBjjJOFNrgcG2FZ8T57nHgHnffCWGQt8mXfV5AlsKZiPyo6I2/WnB97R3YypvlaiLb
	w6e87zWS7K+U17Izo/fiQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:hp1BXEN/AY4=:60iimvEtLDZW8ER9tyfEEB
	p/udT2wi4WZ7qWHoNJp3Of7Z+m+2nWNcC3iIWp2wy8U+tw+DrAwhSTiXb/QiJF9PVT45+hWdA
	mLD0Fzfqkoevr++548rlEu9XmeJTcEYuGYLzrg9FT7Nj53vN9X4lJqwDba2c9HiXoM/utKXXY
	+OO0QudhlOynWEQeJlkypvPWdpMJGKUTxrjNyLkJ/wbha68JIWcN6rVPnhBpz0Wa+W4Jqo3jU
	OH6g4XroWfPXzE8QcL7ILluCalPhxiCt5ZZSnoWQHO5YpIT7JSF8ubwS72a4YrinmGhy8xBYe
	7U2HrmEOc5tqCKiIcF+tP//lUmMLrHbJt2bqs95HPhYkOAlmjWhKzgR21mIfjmv4UitnnRVUn
	F5KZisL3yiCraQ6nwctCb99DQpN7iBPTgKqecRlyAdzuGTXK/HucDwTrQLCli7OevMVjqSzc0
	j8cI9LXzI9VLOqn3RXTmDtwKXzXS8cbpZJ4OzJr7+13SUKh+TAfxxtuIqV+yAaBBVZGImgSNT
	nYt3HaBlPto4XoBQMexxHRe4lHssf43XK5fmp2kMDOhKc6E2T3c83dSPtjF5RqFBP4h5HDquY
	02L9gEbrEEjDH7kQFDXZXPtQAaivirgMNpMFU4s+dpmfV5yFZBMvUgtb6IKNDx73EJXFhPLrq
	Mfa8SctgZ4WDJ5Vjbir7pS7YO6EkdtNk8rcMahtBQeC2/P4w0Vfjz90sLDrgdFwinv+HBlljB
	k7KAJtWWH8afeCi5irKigHc+ufzHbwpQT+lSC8j9QSeoMf9v8vHfFAUkQs4=
Subject: Specifying MACHINE when setting up build environment
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
X-List-Received-Date: Sat, 13 Jan 2018 17:12:24 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Is there a way to specify what MACHINE is put into local.conf when first
setting up the build directory with oe-init-build-env?
I have my own TEMPLATECONF which I use, but I'd like to be able to set the
MACHINE on the command line rather than having to then modify local.conf



