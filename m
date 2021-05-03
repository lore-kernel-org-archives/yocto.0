Subject: SSH_AUTH_SOCK unavailable when pulling modules #golang
To: yocto@lists.yoctoproject.org
From: "Sven" <sven@svenschwermer.de>
X-Originating-Location: Trondheim, Trøndelag, NO (84.215.47.26)
X-Originating-Platform: Mac Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 May 2021 11:25:09 -0700
Message-ID: <yseH.1620066309524235040.gUmM@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have put together a recipe inheriting from go-mod. This project depends =
on out-of-repo modules that sit in private repos. As long as the SSH key re=
quired to pull the requirements is present as a file (under $HOME/.ssh), ev=
erything works fine. However, as soon as the SSH credentials are only avail=
able via agent and $SSH_AUTH_SOCK, the do_compile step fails. I have traced=
 this down to the fact that the $SSH_AUTH_SOCK environment variable is not =
available to do_compile which is when the requirements are pulled. This is =
the sort of error message I get:

ERROR: mypackage-git-r0 do_compile: Execution of '[...]/mypackage/git-r0/t=
emp/run.do_compile.20076' failed with exit code 1:
# cd .; git ls-remote https://bitbucket.org/myorg/some-requirement
Permission denied (publickey).
fatal: Could not read from remote repository.

Note, that the do_fetch step succeeds in pulling the actual repo. I tried =
fixing the problem by wrapping the do_compile function and providing $SSH_A=
UTH_SOCK from the original environment:

def origenv(d, var):
    return d.getVar("BB_ORIGENV", False).getVar(var, False)

do_compile() {
    if [ -n "${@origenv(d, 'SSH_AUTH_SOCK') or ''}" ]; then
        export SSH_AUTH_SOCK=3D"${@origenv(d, 'SSH_AUTH_SOCK')}"
    fi
    go_do_compile
}

This allows the do_compile step (and all subsequent steps) to finish succe=
ssfully. However, that way, I get a bunch of errors like this (cleansstate =
does not help):

ERROR: When reparsing [...]/mypackage_git.bb:do_compile, the basehash valu=
e changed from eb51e4ec321c723587cec03bb9b33b94ee43e0b0939eb43b52824e3d5cfe=
bec2 to 2bb034f43856917d6454a56b32946b1c68cf7f286b20fd7a7eaf1bfd2a92d34f. T=
he metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake mypackage -cdo_compile -Snone
ERROR: Then:
ERROR: $ bitbake mypackage -cdo_compile -Sprintdiff

Neither command helps to fix this. What can I do? I'm on poky yocto-3.1.5-=
18-gbb7747497a.

Best regards,
Sven
