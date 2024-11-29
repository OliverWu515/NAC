# NAC (Nonlinear and Adaptive Control)

## 说明
此仓库存有《非线性与自适应控制》笔记源码。其中内容均非原创，系结合讲义和参考书整理而成。

感谢 WK.H 学长提供其笔记 _Notebook of NAC_ 的源码。

使用的模板基于 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook)。

## 如何编译

### 系统要求

- Windows 系统；
- 安装了 TeX Live 或 MikTeX，不一定需要 xindy 和 latexmk；
- zhmakeindex，用于生成索引，详见 [zhmakeindex 仓库](https://github.com/leo-liu/zhmakeindex)；
- 四款方正字体，具体请参看 [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook) 的说明。

### 克隆文件
电脑上需安装有 Git。在命令行中键入

```bash
git clone https://github.com/OliverWu515/NAC
```

注意，所有源文件均以 UTF-8 编码，以更好支持中文。如果打开时出现编码问题，请重新配置编辑器。

### 编译 TeX 源文件
转到克隆的目标文件夹。然后在命令行中键入

```bash
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
zhmakeindex -s zh.ist NAC-NAC.idx
xelatex -synctex=1 -interaction=nonstopmode --shell-escape -file-line-error NAC
```
或者直接键入
```bash
compile
```

稍作等待，即可看到编译出的 NAC.pdf。

要清理多余的中间文件，请在命令行中键入 

```bash
del *.aux *.bcf *.idx *.ind *.ilg *.run.xml *.synctex.gz *.toc *.log
```

或
```bash
patch_del
```
