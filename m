Subject: Re: iptables conntrack not working in #yocto warrior
To: yocto@lists.yoctoproject.org
From: kcghost@gmail.com
X-Originating-Location: Bethlehem, Pennsylvania, US (64.121.142.251)
X-Originating-Platform: Linux Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 06 Jun 2020 18:28:02 -0700
References: <ziDW.1591469325793872415.0xQ9@lists.yoctoproject.org>
In-Reply-To: <ziDW.1591469325793872415.0xQ9@lists.yoctoproject.org>
Message-ID: <26543.1591493282130043948@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nj7oPFFyCtzLLVlw7urB"

--nj7oPFFyCtzLLVlw7urB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Found the missing element: CONFIG_NETFILTER_XT_MATCH_CONNTRACK, i.e. kernel=
-module-xt-conntrack

It is not listed in the RRECOMMENDS in the iptables recipe explicitly, pre=
sumably it should be since it lists kernel-module-nf-conntrack, but there i=
s also some magic in that recipe I don't understand.

--nj7oPFFyCtzLLVlw7urB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Found the missing element: CONFIG_NETFILTER_XT_MATCH_CONNTRACK, i.e. kernel=
-module-xt-conntrack<br /><br />It is not listed in the RRECOMMENDS in the =
iptables recipe explicitly, presumably it should be since it lists kernel-m=
odule-nf-conntrack, but there is also some magic in that recipe I don't und=
erstand.

--nj7oPFFyCtzLLVlw7urB--
