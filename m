Return-Path: <kgy@teledigit.eu>
Received: from teledigit.eu (teledigit.eu [195.56.148.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D66E00405
	for <yocto@yoctoproject.org>; Sat,  7 Sep 2013 12:46:10 -0700 (PDT)
X-AuthUser: kgy@teledigit.eu
Received: from kgy-pc.localnet ([46.107.59.216]:52785)
	by teledigit.eu with [XMail 1.27 ESMTP Server]
	id <S2DF64> for <yocto@yoctoproject.org> from <kgy@teledigit.eu>;
	Sat, 7 Sep 2013 21:45:31 +0200
From: Kovesdi Gyorgy <kgy@teledigit.eu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 07 Sep 2013 22:44:48 +0200
Message-ID: <1693905.0sQlXRy0ks@kgy-pc>
User-Agent: KMail/4.8.5 (Linux/3.4.47-2.38-desktop; KDE/4.8.5; i686; ; )
MIME-Version: 1.0
Subject: Problems with Hungarian locale and eglibc-2.18
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
X-List-Received-Date: Sat, 07 Sep 2013 19:46:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

I built a recent Poky with eglibc-2.18 on my Beagleboard-C4.

I don't know if this is the proper mailing list for this question, bu a=
t least=20
i could not find any eglibc-related mailing list. Please tell me if the=
re is=20
any.

I installed eglibc-binary-localedata-hu-hu and found a very strange beh=
avior=20
of the functions towupper() and towlower(). All Hungarian-specific char=
acters=20
are converted correctly, except the character '=D6/=F6'. If i exit the=20=

application, and start it second time, only the ASCII characters are co=
nverted=20
correcly (until next reboot). I have never seen such behavior and i can=
't=20
imagine what can be wrong (config/install problem, missing package, bug=
 in=20
eglibc, etc). Any help would be appreciated.
Running the same code on my desktop works perfectly.

Thanx in advance
Gy=F6rgy K=F6vesdi


