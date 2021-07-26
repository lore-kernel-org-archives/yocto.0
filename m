Subject: Re: [ptest-runner 5/5] main: Do not return number of failed tests when calling ptest-runner
To: yocto@lists.yoctoproject.org
From: "Tero Kinnunen" <tero.kinnunen@vaisala.com>
X-Originating-Location: Helsinki, Uusimaa, FI (88.113.34.77)
X-Originating-Platform: Windows Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Jul 2021 00:00:18 -0700
References: <20210721094627.29833-6-lukma@denx.de>
In-Reply-To: <20210721094627.29833-6-lukma@denx.de>
Message-ID: <14725.1627282818210503928@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PBaXwyZZMyIvMZQ9Dgt6"

--PBaXwyZZMyIvMZQ9Dgt6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would favor to keep non-zero exit value if any tests failed. We have reli=
ed on exit value since ptest started to support it, others may be doing tha=
t as well. This would be backward incompatible change, making tests silentl=
y fail. It is somewhat clumsy to try to parse failed tests from output, so =
non-zero rc was very welcome change to me.

Looking at other test runners, it is very common to return non-zero if any=
 tests failed. (Some examples: pytest, python unittest, googletest, shunit2=
, robot framework.) See pytest exit codes for example:=C2=A0https://docs.py=
test.org/en/latest/reference/exit-codes.html

Indeed the failed count is not a good exit value though because of rollove=
r, should be fixed. Could consider using own rc for "any tests failed" diff=
erentiating from other errors.

- Tero

--PBaXwyZZMyIvMZQ9Dgt6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would favor to keep non-zero exit value if any tests failed. We have reli=
ed on exit value since ptest started to support it, others may be doing tha=
t as well. This would be backward incompatible change, making tests silentl=
y fail. It is somewhat clumsy to try to parse failed tests from output, so =
non-zero rc was very welcome change to me.<br /><br />Looking at other test=
 runners, it is very common to return non-zero if any tests failed. (Some e=
xamples: pytest, python unittest, googletest, shunit2, robot framework.) Se=
e pytest exit codes for example:&nbsp;https://docs.pytest.org/en/latest/ref=
erence/exit-codes.html<br /><br />Indeed the failed count is not a good exi=
t value though because of rollover, should be fixed. Could consider using o=
wn rc for "any tests failed" differentiating from other errors.<br /><br />=
&nbsp; &nbsp; - Tero

--PBaXwyZZMyIvMZQ9Dgt6--
